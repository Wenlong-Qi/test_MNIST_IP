#!/bin/bash 
cd /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_6_1zs96ord/project_StreamingFIFO_6/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
