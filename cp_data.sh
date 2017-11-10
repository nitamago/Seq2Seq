#!/bin/bash
Data_Dir=""
Store_Dir=""
pushd $Data_Dir
cp test_data_in ../../$Store_Dir
cp test_data_out ../../$Store_Dir
cp train_data_in ../../$Store_Dir
cp train_data_out ../../$Store_Dir
popd
