Edge weights available here: https://drive.google.com/file/d/1ZbjslWXNGpZuu8U53Qbp_3M8vvSfeDY-/view?usp=sharing

Directory contains 24*7=168 files, corresponding to each hour of the week. Compressed size around 400MB.

For each h=0:23 and each d=0:6, file doha_ridge_({h}, {d})_avgspeeds_ways.txt corresponds to weights duiring the day d and hour h; d=0 fo Monday, d = 6 for Sunday.
Each file corresponds to a unique edge of the OSM road network:
OSM_nodeid_1, OSM_nodeid_2,weight(in sec/m)
where OSM_nodeid_1, OSM_nodeid_2 are OSM node ids of the edge and weight is the infered speed(in sec/m) across that edge at time h.



