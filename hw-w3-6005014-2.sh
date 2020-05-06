#!/bin/bash
file=$"covid1.csv"
file1=$"data-covid.txt"
echo "The number of COVID-19 patients from thailand"
awk -F"," '$7==ct {print $5","$6","$10}' ct="Thailand" $file > $file1
awk -F"," '{total += $1} END{printf "Total case : %d\n",total}' $file1
awk -F"," '{death += $2} END{printf "Total death : %d\n",death}' $file1
awk -F"," '{people = $3} END{printf "Total people : %d\n",people}' $file1
awk -F"," '{total += $1}{death +=$2} END{printf "percentage of total death per total cases : %.5f\n",death*100/total}' $file1
awk -F"," '{total += $1}{people =$3} END{printf "percentage of total cases per thai people : %.5f\n",total*100/people}' $file1
exit 0

