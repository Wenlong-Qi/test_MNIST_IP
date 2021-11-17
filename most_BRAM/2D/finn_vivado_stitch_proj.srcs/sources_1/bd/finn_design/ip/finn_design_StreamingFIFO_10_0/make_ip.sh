#!/bin/bash 
cd /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_10_pm2jy9by/project_StreamingFIFO_10/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
