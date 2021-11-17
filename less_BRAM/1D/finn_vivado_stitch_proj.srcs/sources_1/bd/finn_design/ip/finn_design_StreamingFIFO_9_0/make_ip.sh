#!/bin/bash 
cd /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_9_1lzcv8rc/project_StreamingFIFO_9/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
