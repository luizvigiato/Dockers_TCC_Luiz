#!/bin/tclsh
# maintainer: Pooja Jain

puts "SETTING CONFIGURATION"
dbset db db2
dbset bm TPC-H

diset connection db2_def_user db2inst1
diset connection db2_def_pass ibmdb2
diset connection db2_def_dbase db2

diset tpch db2_scale_fact 1
diset tpch db2_num_tpch_threads [ numberOfCPUs ]
diset tpch db2_tpch_user db2inst1
diset tpch db2_tpch_pass ibmdb2
diset tpch db2_tpch_dbase tpch
diset tpch db2_tpch_def_tab USERSPACE1
diset tpch db2_tpch_organizeby NONE

puts "SCHEMA BUILD STARTED"
buildschema
puts "SCHEMA BUILD COMPLETED"
