#!/bin/bash
# Copyright (C) tkornuta, IBM Corporation 2015-2019
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# A script to loop through directories to header to all source files (*.h, *.hpp, *.cc, *.cpp).


# Find all files either in src dir and subdirs.
#array=(`find src -type f`) 
array_cpp=(`find src -type f | grep -E "*.h|*.hpp|*.cpp|*.cc"`)

## Loop through the above list.
for i in "${array_cpp[@]}"
do
    #echo "$i"
    cat license_header_cpp $i > tmpfile2; mv tmpfile2 $i;
done

array_cmake=(`find src -type f | grep -E "*.txt|*.yml|*.yaml"`)

## Loop through the above list.
for i in "${array_cmake[@]}"
do
    #echo "$i"
    cat license_header_cmake $i > tmpfile2; mv tmpfile2 $i;
done

#for hfile in *.hpp; do cat license_header.txt $hfile > tmpfile2; mv tmpfile2 $hfile; done
