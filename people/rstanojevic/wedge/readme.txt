For each h=0:23, file doha_ridge_{h}_avgspeeds1.txt corresponds to weights duiring the hour of the day h.
For every h=0:23, each line has 3 fields which correspond to a unique edge of the OSM road network:
OSM_nodeid_1, OSM_nodeid_2,weight(in sec/m)
where OSM_nodeid_1, OSM_nodeid_2 are OSM node ids of the edge and weight is the infered speed(in sec/m) across that edge at time h.



