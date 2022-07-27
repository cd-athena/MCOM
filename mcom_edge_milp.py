from __future__ import division

import math

from pulp import *
# from build_MCOM_list import scrape_data, fetch_from_csv
# from plot_results import plot_objective, plot_video_codecs_selection
# import numpy as np
# import math
# import json
import pandas as pd
import time

# Videos available at the origin server
VIDEO = ["Video1", "Video2"]
# Filename for fetching videos and segments information
FILE = ["{:s}.csv".format(v) for v in VIDEO]

# Segment duration (s)
seg_dur = 2

# Available codecs for encoded video contents ordered from low to high priority -> Best to use
codecs = ["H264", "HEVC"]

# Video segments
N_SEG = 5

# Bitrate ladder (Table 3: https://developer.apple.com/documentation/http_live_streaming/http_live_streaming_hls_authoring_specification_for_apple_devices)
# bitrate_ladder = [145, 300, 600, 900, 1600, 2400, 3400, 4500, 5800, 8100, 11600, 16800]  # kbps
# Subset from representation 5 to representation 12
bitrate_ladder = [145, 300, 600, 900, 1600, 2400, 3400, 4500]  # kbps

# Bitrate ladder (kbps)
# For H264 no metadata are gathered for transcoding
# metadata = {"H264": [0 for i in bitrate_ladder], "HEVC": [117, 160, 241, 248, 248, 429, 429, 947, 947, 1489, 3594, 0]}  # last value is not used
# Subset from representation 5 to representation 12
metadata = {"H264": [0 for i in bitrate_ladder], "HEVC": [117, 160, 241, 248, 248, 429, 429, 947]}  # last value is not used

# Segment delivery policies
# Fetch, Transcode, Skip
policies = ['F', 'T', 'S']

# Transcoding instances at the edge {"name": available cores}
# instances = {"i1": 2, "i2": 4, "i3": 8, "i4": 16}
# c5.2xlarge for transcoding
#
instances_type = {"2xlarge": 8}

# Available CPU resources at the edge
CPU_MAX = 16  # cores

# Transcoding times per instance, representation and codec (array composed by J time values, where J is the len(bitrate ladder)) but the last one is not to be considered
# transcoding_time = {"i1": {"H264": [0.22, 0.77, 1.69, 6.54, 0], "HEVC": [0.22, 0.77, 1.69, 6.54, 0]}, "i2": {"H264": [0.13, 0.43, 0.88, 3.35, 20], "HEVC": [0.13, 0.43, 0.88, 3.35, 20]}, "i3": {"H264": [0.09, 0.26, 0.53, 2.02, 20], "HEVC": [0.09, 0.26, 0.53, 2.02, 20]}, "i4": {"H264": [0.07, 0.18, 0.39, 1.10, 20], "HEVC": [0.07, 0.18, 0.39, 1.10, 20]}}
transcoding_time = {"2xlarge": {"H264": [0.04, 0.06, 0.08, 0.09, 0.09, 0.12, 0.13, 0.23], "HEVC": [0.12, 0.15, 0.23, 0.23, 0.24, 0.36, 0.38, 0.76]}}

# Conventional transcoding time for HEVC per instance, representation
# Used for plotting purposes
# n_transcoding_time = {"i1": {"HEVC": [0.35, 0.92, 1.99, 7.22, 20]}, "i2": {"HEVC": [0.20, 0.68, 0.98, 3.68, 20]}, "i3": {"HEVC": [0.16, 0.48, 0.67, 2.59, 20]}, "i4": {"HEVC": [0.11, 0.32, 0.52, 1.79, 20]}}
n_transcoding_time = {"2xlarge": {"H264": [0.04, 0.06, 0.08, 0.09, 0.09, 0.12, 0.13, 0.23], "HEVC": [0.15, 0.20, 0.31, 0.34, 0.40, 0.64, 0.75, 1.41]}}

# User groups (browser/platform) to be represented with supported codecs ordered from low to high priority -> [H264, HEVC, VVC]
# user_groups = {"Chrome": ["H264", "VP9", "AV1"], "Firefox": ["H264"], "Safari": ["H264", "HEVC"], "Edge": ["H264"], "Internet Explorer": ["H264"], "Opera": ["H264"]}
user_groups = {"Chrome": ["H264"], "Firefox": ["H264"], "Safari": ["H264", "HEVC"], "Edge": ["H264"], "Internet Explorer": ["H264"], "Opera": ["H264"]}

# Percentage of share for each user group
# rho = {"Chrome": 0.5, "Firefox": 0.2, "Safari": 0.2, "Edge": 0.05, "Internet Explorer": 0.03, "Opera": 0.02}
rho = {1: {"Chrome": 0.9, "Firefox": 0.0, "Safari": 0.1, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       2: {"Chrome": 0.8, "Firefox": 0.0, "Safari": 0.2, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       3: {"Chrome": 0.7, "Firefox": 0.0, "Safari": 0.3, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       4: {"Chrome": 0.6, "Firefox": 0.0, "Safari": 0.4, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       5: {"Chrome": 0.5, "Firefox": 0.0, "Safari": 0.5, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       6: {"Chrome": 0.4, "Firefox": 0.0, "Safari": 0.6, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       7: {"Chrome": 0.3, "Firefox": 0.0, "Safari": 0.7, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       8: {"Chrome": 0.2, "Firefox": 0.0, "Safari": 0.8, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       9: {"Chrome": 0.1, "Firefox": 0.0, "Safari": 0.9, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0},
       10: {"Chrome": 0.0, "Firefox": 0.0, "Safari": 1.0, "Edge": 0.0, "Internet Explorer": 0.0, "Opera": 0.0}
       }

# Available bandwidth (kbps)
bandwidth = 200000

# Serving deadline - max latency (s)
serving_deadline = 5

# Computation cost fee
C_COST = 0.037 / 3600  # cost per second

# Delivery data cost fee
D_COST = 0.12 / (8*1000*1000)  # cost per kbit (from GBs -> / (8*1000*1000))

# PSNR metric values based on video quality outcomes
# psnr = {"H264": [19.54, 20.70, 22.16, 23.13, 24.14, 25.49, 25.61, 27.05, 27.05, 27.96, 29.43, 30.16], "HEVC": [20.05, 21.64, 23.35, 24.68, 26.27, 27.82, 29.12, 30.21, 31.23, 32.58, 34.37, 36.18]}
psnr = {"H264": [19.54, 20.70, 22.16, 23.13, 24.14, 25.49, 25.61, 27.05], "HEVC": [20.05, 21.64, 23.35, 24.68, 26.27, 27.82, 29.12, 30.21]}

# Quality metrics upper bound
# Q_UP_BOUND = 100  # VMAF
Q_UP_BOUND = max(abs(psnr[c][j_ind] - psnr["H264"][j_ind]) for c in codecs for j_ind in range(len(bitrate_ladder)))  # PSNR

# Cost function weights
alpha = 0.5
beta = 1 - alpha

# If everything is fetched the maximum_data_cost will be this one
max_data_cost = len(codecs) * sum(bitrate_ladder) * seg_dur
# If everything is fetched the maximum fetch time will be this one
max_fetch_time = len(codecs) * sum(bitrate_ladder) * seg_dur / bandwidth

# If everything is transcoded -> worst case we fetch only H264 maximum quality (H265 has a higher computational expense) and transcode only with i4 instance (no parallel computing -> max core utilization is 16)
# max_transcoding_cost = serving_deadline * CPU_MAX
upper_bound_transcoding_time = sum(t for c in codecs for t in transcoding_time["2xlarge"][c]) - transcoding_time["2xlarge"]["H264"][-1]
upper_bound_transcoding_cost = upper_bound_transcoding_time * CPU_MAX


########################################################################
def milp_function(step=5, seg=1):
    # Fetch data from CSV file (video1.csv)
    fetch_quality_from_csv("video1.csv", seg)

    prob = LpProblem("MCOM", LpMinimize)

    # Gamma = instance i selected for transcoding representation j, codec c
    y = LpVariable.dicts("y[(instance,representation,codec)]", [(i, j, c) for i in instances_type for j in bitrate_ladder
                                                for c in codecs], 0, 1, LpBinary)

    x = LpVariable.dicts("x[(representation,codec,policy)]", [(j, c, p) for j in bitrate_ladder for c in codecs
                                                                for p in policies], 0, 1, LpBinary)

    # Delivered codecs
    d = LpVariable.dicts("d[(user_group, representation, codec)]", [(g, j, c) for g in user_groups for j in bitrate_ladder for c in user_groups[g]], 0, 1, LpBinary)

    fetch_time = LpVariable('f_t', lowBound=0)
    max_transcoding_time = LpVariable('t_t', lowBound=0)

    w_cost = LpVariable('data_cost', lowBound=0)  # in kbits (-> (8*1000*1000) GBs)
    t_cost = LpVariable('trans_cost', lowBound=0)  # cores per second
    q_gain = LpVariable('quality_gain', lowBound=0)  # normalized

    # Overall cost function
    # prob += (D_COST * w_cost / bandwidth + C_COST * t_cost / CPU_MAX) / serving_deadline - beta * q_gain
    prob += (D_COST / max_data_cost * w_cost + C_COST / upper_bound_transcoding_cost * t_cost) / (D_COST + C_COST) + alpha * (1.0 / max_fetch_time * fetch_time + 1.0 / upper_bound_transcoding_time * max_transcoding_time) - beta * q_gain
    # prob += (D_COST / max_data_cost * w_cost + C_COST / upper_bound_transcoding_cost * t_cost) / (D_COST + C_COST) - beta * q_gain

    # const 1
    # Instance selection constraint
    for j in bitrate_ladder:
        for c in codecs:
            c1 = x[(j, c, 'T')] <= lpSum(y[(i, j, c)] for i in instances_type)
            # print(c1)
            prob += c1

    # const 2
    # Ensure to select only one policy
    for j in bitrate_ladder:
        for c in codecs:
            c2 = lpSum(x[(j, c, p)] for p in policies) == 1
            # print(c2)
            prob += c2

    # const 3
    # Ensure that the skip option is selected for each representation of the same codec
    # for c in codecs:
    #     for j_ind, j in enumerate(bitrate_ladder[:-1]):
    #         c3 = x[(bitrate_ladder[j_ind], c, 'S')] == x[(bitrate_ladder[j_ind + 1], c, 'S')]
    #         prob += c3
    # Codec H264 can never be skipped
    # for j_ind, j in enumerate(bitrate_ladder):
    #     c3 = x[(bitrate_ladder[j_ind], 'H264', 'S')] == 0
    #     prob += c3

    # const 4
    # Transcoding feasibility constraint
    for j in bitrate_ladder:
        for c in codecs:
            # Higher representations must be fetched
            # c4 = x[(j, c, 'T')] <= lpSum(x[(j1, c1, 'F')] for c1 in codecs for j1 in bitrate_ladder if j1 > j)
            # The highest representation must be fetched
            c4 = x[(j, c, 'T')] <= lpSum(x[(bitrate_ladder[-1], c1, 'F')] for c1 in codecs)
            # print(c4)
            prob += c4

    # const 5
    # Maximum transcoding time
    for j_ind, j in enumerate(bitrate_ladder):
        for c in codecs:
            c5 = lpSum(y[(i, j, c)] * transcoding_time[i][c][j_ind] for i in instances_type) <= max_transcoding_time
            # print(c5)
            prob += c5

    # const 6
    # Overall fetched data
    c6 = lpSum(x[(j, c, 'F')] * bitrate_ladder[j_ind] + x[(j, c, 'T')] * metadata[c][j_ind] for j_ind, j in enumerate(bitrate_ladder) for c in codecs) * seg_dur <= w_cost  # cost in Kbits (GBs -> / (8*1000*1000))
    # print(c6)
    prob += c6

    # const 7
    # Fetch time
    c7 = w_cost <= bandwidth * fetch_time
    # print(c7)
    prob += c7

    # const 8
    # Serving deadline
    c8 = fetch_time + max_transcoding_time <= serving_deadline
    # print(c8)
    prob += c8

    # const 9
    # Transcoding cost
    c9 = lpSum(y[(i, j, c)] * instances_type[i] * transcoding_time[i][c][j_ind] for i in instances_type for j_ind, j in enumerate(bitrate_ladder) for c in codecs) <= t_cost
    # print(c9)
    prob += c9

    # const 10
    # Available CPUs constraint
    for j in bitrate_ladder:
        for c in codecs:
            c10 = lpSum(y[(i, j, c)] * instances_type[i] for i in instances_type) <= CPU_MAX
            # print(c10)
            prob += c10

    # const 11
    # Available CPU resources for transcoding
    c11 = t_cost <= max_transcoding_time * CPU_MAX
    # print(c11)
    prob += c11

    # const 12
    # Only one codec delivered for each user group
    for g in user_groups:
        for j in bitrate_ladder:
            c12 = lpSum(d[(g, j, c)] for c in user_groups[g]) == 1
            # print(c12)
            prob += c12

    # const 13
    # Codec c can be selected for user group g only if contained in codec list of g and if not skipped by the model
    for g in user_groups:
        for j in bitrate_ladder:
            for c in user_groups[g]:
                c13 = d[(g, j, c)] <= 1 - x[(j, c, 'S')]
                # print(c13)
                prob += c13

    # const 14
    # Quality gain
    c14 = q_gain == lpSum(d[(g, j, c)] * rho[step][g] * (psnr[c][j_ind] - psnr["H264"][j_ind]) / Q_UP_BOUND for g in user_groups for c in user_groups[g] for j_ind, j in enumerate(bitrate_ladder)) / len(bitrate_ladder)
    # print(c14)
    prob += c14

    # Verbose output: 1, otherwise 0
    LpSolverDefault.msg = 0

    # Compute the time taken by the solver to solve the problem
    t1 = time.time()
    prob.solve()
    t2 = time.time()-t1
    print("Time required for the optimization: {:.3f}s".format(t2))

    v_values = []
    v_dict = {}
    # n_element = len(codecs) * len(videos)
    for v in prob.variables():
        # if v.varValue > 0 or v.name == 'quality_gain':
        #    print(v.name, "=", v.varValue), v.name[1]
        v_values.append(v.varValue)
        v_dict[v.name] = v.varValue
        # else:
        #    print(v.name, "=", v.varValue), v.name[1]
        # if len(v_values) < n_element:
        #    v_values.append(v.varValue)
        #    print(v.name, "=", v.varValue)
    # print(v_values)
    # return v_values, prob.objective.value()
    return v_dict, prob.objective.value()


def available_representations(v_dict):
    # print(v_dict)
    reps = dict()
    for c in codecs:
        # reps[c] = []
        reps[c] = dict()
        for b in bitrate_ladder:
            for p in policies[:-1]:  # Not considering skip policy
                if v_dict["x_(representation,codec,policy)__({:n},_'{:s}',_'{:s}')".format(b, c, p)] == 1.0:
                    # reps["{:n}:{:s}:{:s}".format(b, c, p)] = v_dict["x_(representation,codec,policy)__({:n},_'{:s}',_'{:s}')".format(b, c, p)]
                    # bp = dict()
                    # bp['Bitrate'] = b
                    # bp['Policy'] = p
                    # reps[c].append(bp)
                    reps[c][b] = p
                    # bitrate["{:n}".format(b)] = "{:s}".format(p)
                # v_dict["x_(representation, codec, policy)__(1600, _'HEVC', _'S')"]
    return reps


# Fetch relevant data from CSV file
#
def fetch_quality_from_csv(file, seg):
    global psnr, metadata, transcoding_time
    # global transcoding_time
    # Read CSV file and gather videos information
    # Segment, H264, HEVC
    instance_name = list(instances_type.keys())[0]
    # Video name, PSNR value for H264, HEVC
    psnr = {"H264": [], "HEVC": []}
    metadata = {"H264": [0 for i in bitrate_ladder], "HEVC": []}
    transcoding_time = {instance_name: {"H264": [], "HEVC": []}}
    #transcoding_time = dict()
    df = pd.read_csv(file)
    # print(df)
    df = df.reset_index()  # make sure indexes pair with number of rows
    # print(df[df.segment_index == seg])
    for index, row in df[df.segment_index == seg].iterrows():
        for b in bitrate_ladder:
            psnr["H264"].append(row['psnr_H264_{:n}'.format(b)])
            psnr["HEVC"].append(row['psnr_HEVC_{:n}'.format(b)])
            metadata["HEVC"].append(row['metadata_HEVC_{:n}'.format(b)])
            transcoding_time[instance_name]["H264"].append(row['transcodingTime_H264_{:n}'.format(b)])
            transcoding_time[instance_name]["HEVC"].append(row['transcodingTime_HEVC_{:n}'.format(b)])
    # print(psnr)
    # print(metadata)
    # print(transcoding_time)

# def check_incoming_requests():
#     import random
#     global rho
#     max_range = 1.0
#     # Modify rho based on the requests coming from users
#     # Give random values that sum up to 1
#     for u in user_groups:
#         if max_range > 0.01:
#             random_p = round(random.random() * max_range, 2)
#             max_range -= random_p
#         else:
#             random_p = max_range
#             max_range = 0.0
#         rho[u] = random_p


def print_headers_in_excel():
    import csv

    header = ['Deadline (s)', 'Fetch Time (s)', 'Transcoding Time (s)', 'Percentage h264', 'Percentage h265', 'Alpha', 'Beta', 'Objective h264', 'Fetched H.264 data (Kbits)', 'Objective All', 'Fetched-all data (Kbits)', 'Fetch-All QoE Gain', 'Objective Model', 'Fetched-MCOM data (Kbits)', 'Transcoded Representations', 'MCOM QoE Gain']

    with open('results.csv', 'w', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)

        # write the header
        writer.writerow(header)


def print_values_in_excel(serving_deadline, fetch_time, trans_time, p_h264, p_h265, alpha, beta, fetch_h264_obj, fetch_h264_data, fetch_all_obj, fetch_all_data, all_qoe_gain, opt_model_obj, mcom_fetch_data, n_trans_rep, mcom_qoe_gain):
    import csv

    data = [serving_deadline, fetch_time, trans_time, p_h264, p_h265, alpha, beta, fetch_h264_obj, fetch_h264_data, fetch_all_obj, fetch_all_data, all_qoe_gain, opt_model_obj, mcom_fetch_data, n_trans_rep, mcom_qoe_gain]

    with open('results.csv', 'a', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)

        # write the data
        writer.writerow(data)


def main():
    opt_model_obj = 0.0
    opt_model_money = 0.0  # $
    fetch_all_obj = 0.0
    fetch_all_money = 0.0  # $
    fetch_h264_obj = 0.0
    fetch_h264_money = 0.0  # $
    avg_qoe_gain = 0.0
    print_headers_in_excel()
    # Use 50% H264 - 50% H265
    # for step in rho.keys():
    step = 5
    for seg in range(1, N_SEG):
        # check_incoming_requests()
        # print(rho)
        print("\nRUNNING FOR SEGMENT {:n}...\n".format(seg))
        opt_vars, objective = milp_function(step, seg)
        reps = available_representations(opt_vars)
        opt_model_obj = objective
        fetch_h264_obj = D_COST / (D_COST + C_COST) / len(codecs) + alpha / len(codecs)
        fetch_h264_money += sum(bitrate_ladder) * seg_dur * D_COST
        # Everything is fetched -> No transcoding costs and all representations of all codecs requested
        if max_fetch_time <= serving_deadline:
            fetch_all_obj = D_COST / (D_COST + C_COST) + alpha - beta * sum(rho[step][g] * (psnr[user_groups[g][-1]][j_ind] - psnr["H264"][j_ind]) / Q_UP_BOUND for g in user_groups for j_ind, j in enumerate(bitrate_ladder)) / len(bitrate_ladder)
            fetch_all_money += len(codecs) * sum(bitrate_ladder) * seg_dur * D_COST
        else:
            fetch_all_obj = fetch_h264_obj
            fetch_all_money = fetch_h264_money
        opt_data_cost = 0
        if opt_vars['data_cost']:
            opt_data_cost = opt_vars['data_cost']
        opt_trans_cost = 0
        if opt_vars['trans_cost']:
            opt_trans_cost = opt_vars['trans_cost']
        opt_model_money += opt_trans_cost * C_COST + opt_data_cost * D_COST
        # if opt_vars['quality_gain']:  # normalized
        #    print("Quality gain => {}".format(opt_vars['quality_gain']))
        avg_qoe_gain = opt_vars['quality_gain']
        print_values_in_excel(serving_deadline, opt_vars['f_t'], opt_vars['t_t'], 1 - rho[step]['Safari'], rho[step]['Safari'], alpha, beta, fetch_h264_obj, sum(bitrate_ladder) * seg_dur, fetch_all_obj, len(codecs) * sum(bitrate_ladder) * seg_dur, sum(rho[step][g] * (psnr[user_groups[g][-1]][j_ind] - psnr["H264"][j_ind]) / Q_UP_BOUND for g in user_groups for j_ind, j in enumerate(bitrate_ladder)) / len(bitrate_ladder), opt_model_obj, opt_vars['data_cost'], sum(y[1] for y in opt_vars.items() if y[0][0] == 'y'), avg_qoe_gain)
    # avg_qoe_gain = avg_qoe_gain / N_SEG
    print("Optimized objective function value = {}".format(opt_model_obj))
    print("-> Total money spent: {} $".format(opt_model_money))
    print("-> Average video quality gain: {:.2%}".format(avg_qoe_gain))
    print("Fetch_All objective function value = {}".format(fetch_all_obj))
    print("-> Total money spent: {} $".format(fetch_all_money))
    print("Fecth_H264_Only objective function value = {}".format(fetch_h264_obj))
    print("-> Total money spent: {} $".format(fetch_h264_money))
    # for v in opt_vars:
    #     # print(v.name)
    #     if v.name == 'data_cost':  # in GBs
    #         print("Data cost => {} Kbits x {} $/Kbits = {} $".format(v.varValue, D_COST, v.varValue * D_COST))
    #     if v.name == 'trans_cost':  # in (cores per) seconds
    #         print("Transcoding cost => {} s x {} $/s = {} $".format(v.varValue, C_COST, v.varValue * C_COST))
    #     if v.name == 'quality_gain':  # normalized
    #         print("Quality gain => {}".format(v.varValue))
    # print("Objective function value = {}".format(objective))
    # print("Variables values: {}".format(values))


if __name__ == "__main__":
    # Execute the main
    main()
