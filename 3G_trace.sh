#!/usr/bin/env bash

interface="ens33"
while getopts i: flag
do
    case "${flag}" in
        i) interface=${OPTARG};;
    esac
done

tc qdisc add dev $interface root tbf rate 3295.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3295.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3857.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3703.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1867.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3884.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3907.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3911.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3822.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3818.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3849.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3973.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3810.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3765.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4016.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3814.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3826.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3915.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3857.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3841.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3791.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3981.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3756.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3993.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3853.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3720.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3919.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3869.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3196.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2886.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2571.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2942.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3129.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3062.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3223.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3316.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3706.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3830.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3862.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3586.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4062.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3776.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3911.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3833.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3780.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3889.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3919.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3858.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3872.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3919.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3688.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3728.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4156.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3838.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3911.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3769.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3923.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3814.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3844.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3868.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3783.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4122.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3674.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3870.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3249.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2770.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2916.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2852.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3199.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2295.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2267.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2611.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2485.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2312.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2578.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1842.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2384.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1774.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1704.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2482.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2882.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3013.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2873.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2244.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3723.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2510.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2731.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1507.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1533.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 612.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 792.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 313.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 671.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 701.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 175.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 216.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 396.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 39.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 390.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 437.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 600.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2022.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1768.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1202.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1491.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1311.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 722.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1085.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 967.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1319.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 864.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 945.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 875.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 864.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1155.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 782.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 875.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1062.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1049.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1179.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1131.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1272.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1168.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 479.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 490.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 362.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 735.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 840.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 623.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 596.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 536.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 548.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 432.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 561.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 958.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1027.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 742.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 571.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 735.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 687.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 642.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 723.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 782.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 782.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 769.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 945.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 817.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 793.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 513.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 490.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 547.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 420.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 490.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 537.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 607.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 688.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 372.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 432.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 806.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1050.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1484.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1482.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1669.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1205.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1579.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1880.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2080.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1961.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2197.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3397.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2942.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2198.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3117.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2487.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2723.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2562.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2551.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2244.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1494.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2463.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2324.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2561.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2951.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2799.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3094.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3109.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3246.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3301.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2614.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2618.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2676.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2706.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2767.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2895.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3083.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3129.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3460.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3409.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1962.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2650.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2837.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2814.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2310.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2324.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1542.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1599.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1365.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 875.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1833.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2197.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2125.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2174.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2115.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2103.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2115.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2136.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2095.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2092.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1868.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1714.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1694.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1800.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1798.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1939.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1891.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1952.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1928.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1788.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1936.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1788.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1613.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1484.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1567.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1719.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1182.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1132.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 817.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 420.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 396.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 724.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 444.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 302.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 440.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 456.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 548.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 477.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 444.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 256.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 361.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 303.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 325.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 209.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 373.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 851.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 724.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 677.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 605.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 583.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 0.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1068.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 794.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1063.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1306.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 759.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 887.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 793.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 653.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 585.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 864.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 910.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 804.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 863.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 706.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 607.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 128.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 871.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 350.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 620.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 981.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1413.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1658.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2251.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2311.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2370.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1413.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1448.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1798.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2018.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2533.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2893.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1260.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1144.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1819.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2496.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1694.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1740.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2611.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1892.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2671.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2345.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1436.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3079.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2779.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2473.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2577.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2337.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2010.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2107.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2207.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2209.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2466.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3289.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3449.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2882.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3637.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3982.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3920.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3460.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4133.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1783.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1221.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 687.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1015.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1541.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3105.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3586.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3594.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2856.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2443.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2042.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1368.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1833.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1928.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2589.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3243.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1669.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 642.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 840.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2036.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2557.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2452.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2276.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2181.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2501.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2150.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1870.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1691.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1505.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 944.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1110.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1313.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 759.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 126.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2134.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2503.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3682.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4779.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3337.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2947.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4906.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5165.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5213.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5514.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4728.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5552.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5640.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5078.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4750.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4549.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2627.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1152.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 382.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 0.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 46.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1133.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 619.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 678.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 930.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1172.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1692.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 956.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1249.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 0.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1009.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1294.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2315.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2905.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3511.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2520.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1879.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2037.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1862.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1398.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 412.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 93.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1332.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 935.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1424.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1954.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1684.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1585.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1914.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2304.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2741.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1681.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1913.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1454.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 741.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 105.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 444.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 210.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3401.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3689.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3546.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3595.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3777.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3681.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3764.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3258.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3968.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3764.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4090.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3101.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3365.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1828.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2569.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2349.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2241.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3435.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3083.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2613.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3476.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2778.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2272.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2343.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2541.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2042.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 958.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1693.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1563.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1390.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1530.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1618.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1385.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1415.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1296.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1413.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1378.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1108.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1400.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2278.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2324.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1546.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2028.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2483.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1497.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1541.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1714.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2466.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2758.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2653.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3602.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2887.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2466.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3048.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3311.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3316.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2641.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3015.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3231.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2787.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3770.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2933.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3290.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3286.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3960.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3817.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4043.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4466.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3954.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4386.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5001.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3960.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4766.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4047.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4054.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4064.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3962.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3459.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2302.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1764.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4028.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3120.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3738.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4993.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3981.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3338.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 897.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 245.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5227.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5446.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4606.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4873.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4049.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3547.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5260.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5324.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3789.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5458.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5272.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4853.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4742.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4886.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5048.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4864.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4207.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4892.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4396.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1926.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3264.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3818.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3694.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1438.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1811.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2628.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2574.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2881.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2437.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2692.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3506.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3477.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3172.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3074.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3965.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4254.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3541.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3048.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4150.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4659.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3584.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1309.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2045.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2779.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2989.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4148.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3432.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4179.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3542.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4060.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3919.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4067.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4955.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4342.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4995.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3955.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3808.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4453.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4927.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4515.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4095.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5318.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4664.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2976.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1966.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3868.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3709.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4044.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3773.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3420.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3332.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3287.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2767.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1936.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1741.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1836.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1445.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1581.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2968.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2938.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2208.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2036.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2676.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2150.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3857.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3967.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4642.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3895.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3836.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4686.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3036.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2820.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3510.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3281.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4223.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4562.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4925.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4365.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3558.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4051.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3413.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3804.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2938.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3276.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3872.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3896.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3693.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4199.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4210.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3857.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3857.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2931.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2050.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3098.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3646.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3106.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4110.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3286.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2984.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2459.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3600.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3409.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3985.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3689.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2585.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1994.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2614.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2259.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2717.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2638.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3244.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3554.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3670.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3440.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3758.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3907.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3575.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2530.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1061.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2539.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3538.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2771.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 747.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 991.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 852.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2265.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2646.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3393.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3048.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4103.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4506.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4675.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4574.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5232.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4342.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1981.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3406.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3868.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3823.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3344.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3514.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3957.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4262.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3588.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3813.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3100.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2159.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1744.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1087.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1412.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 723.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1987.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3131.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3212.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4088.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4757.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5353.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5006.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5044.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4827.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4501.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4617.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4164.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3627.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2681.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1156.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2009.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5313.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3813.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2802.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2510.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2004.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1238.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2360.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2568.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2592.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2438.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1874.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1072.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 561.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1115.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2031.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2031.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2407.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2887.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3050.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2615.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2318.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2394.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2676.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2489.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2594.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2751.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 0.0kbit latency 20ms burst 1540
sleep 0.0s
tc qdisc change dev $interface root tbf rate 2402.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 888.0kbit latency 20ms burst 1540
sleep 0.0s
tc qdisc change dev $interface root tbf rate 2352.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2751.0kbit latency 20ms burst 1540
sleep 0.0s
tc qdisc change dev $interface root tbf rate 1790.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3366.0kbit latency 20ms burst 1540
sleep 0.0s
tc qdisc change dev $interface root tbf rate 151.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3276.0kbit latency 20ms burst 1540
sleep 0.0s
tc qdisc change dev $interface root tbf rate 3162.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2571.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2370.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2465.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2435.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2138.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1899.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2103.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2172.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1975.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2099.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2024.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1926.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1811.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2097.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2228.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1948.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1496.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1948.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2281.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1928.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1415.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1996.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2298.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2362.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2337.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2382.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2544.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2587.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3128.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2863.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3107.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3860.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3342.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4233.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3823.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3798.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3837.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3908.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4378.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4330.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5471.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4728.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4420.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4260.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3958.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3962.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4063.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4017.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4223.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4932.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5569.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5038.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5112.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4575.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5424.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5182.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5435.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5289.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4707.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4985.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5581.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5458.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4650.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5482.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5002.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3759.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2583.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4618.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4643.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4961.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5562.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5210.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5208.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5546.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4662.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5243.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5483.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5223.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5472.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5330.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5628.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4869.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5249.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3554.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5231.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4781.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5084.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4972.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5458.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4850.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5575.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5336.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5499.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5552.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5440.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5552.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5546.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4985.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3286.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3260.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3462.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3848.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3978.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3935.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4087.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4285.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4289.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5192.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4349.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4642.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5217.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4229.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4343.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3834.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3273.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3170.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3120.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3674.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3662.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3933.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4048.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4879.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5482.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5418.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5156.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5546.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4780.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1984.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1848.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1815.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1758.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1437.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 93.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3041.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4144.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3155.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 408.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2138.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3433.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4133.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3942.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4102.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3911.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4398.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4032.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4083.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4402.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4083.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4051.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4045.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3900.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3523.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4044.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3635.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3670.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3974.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3752.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3931.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3681.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3654.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3432.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2616.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1846.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2630.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4060.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4270.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4103.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3039.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3094.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2892.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2510.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1391.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2139.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1627.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 688.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1309.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3541.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3374.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1052.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4191.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3585.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3560.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3530.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3791.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3779.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3599.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2921.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2930.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2971.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3114.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2852.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2694.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2472.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1998.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1426.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1154.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1062.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1003.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 676.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 969.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1377.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1016.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1074.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1026.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1087.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 699.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1390.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1180.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 888.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1202.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1262.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1312.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1367.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1333.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1415.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1485.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1507.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1623.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1741.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1938.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2197.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2323.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2737.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2618.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2878.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2618.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2924.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2685.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2653.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3038.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3012.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3146.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3207.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2977.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2536.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2033.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2849.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3479.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3456.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2887.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3305.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2089.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1133.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1050.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1179.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1636.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1806.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 989.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 268.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1156.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1109.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1505.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1482.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1553.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1319.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 980.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1341.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 303.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 397.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1471.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1190.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 829.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 700.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 700.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 572.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 186.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 0.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 198.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 279.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 175.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 186.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 302.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 676.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 1085.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 677.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 629.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3039.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3327.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2534.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3845.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3640.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4172.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3414.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 2930.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3246.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3417.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 3226.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4479.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4488.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5114.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 5283.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4577.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc change dev $interface root tbf rate 4489.0kbit latency 20ms burst 1540
sleep 1.0s
tc qdisc del dev $interface root
