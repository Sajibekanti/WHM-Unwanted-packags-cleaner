#!/bin/bash
clear
echo "Total Number of packags: ";
find /var/cpanel/packages | wc -l;
echo "Press ENTER to remove the unwanted packages";
read m
mkdir /var/cpanel/a
cd /var/cpanel/packages
mv * ../a
for i in $(ls /var/cpanel/users)
do
mv /var/cpanel/a/$i* /var/cpanel/packages/
echo $i;
done
clear
find /var/cpanel/a | wc -l; echo "Packages have been Cleared";
rm -rf /var/cpanel/a