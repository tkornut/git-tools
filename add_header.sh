#!/bin/bash
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