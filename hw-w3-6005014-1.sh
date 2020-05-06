#!/bin/bash
INPUT=covid1.csv
OLDIFS=$IFS
IFS=','
[! -f $INPUT ] && { echo "$INPUT flie not found"; exit1 99;}
while
	        read dateRep day month year cases death countriesAndTerritories geold countryterritoryCode popDate2018
	do
		        echo " $read , $dateRep , $day , $month , $year , $cases , $death , $countriesAndTerritories , $geold , $countryterritoryCode , $popDate2018 "
		done < $INPUT
		IFS=$OLDIFS
		~       
