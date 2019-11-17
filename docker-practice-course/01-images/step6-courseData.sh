#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


cd /root
echo 'megatestfile1' > test_file1 &&
echo 'megatestfile2' > test_file2 &&
tar -cf test_arch.tar test_file2 &&
rm test_file2

