#!/bin/bash -x

feet=12

inches=42

inchft=$((inches / feet))

echo "$inches in feet is $inchft"

######

inch_2_cm=2
length=60
breadth=40

Length_2_inch=$(( length * feet ))
Breadth_2_inch=$(( breadth * feet ))

Inchsquare=$(( Length_2_inch * Breadth_2_inch ))
Cmsquare=$(( Inchsquare * inch_2_cm * inch_2_cm ))
Metersquare=$(( Cmsquare / 1000 ))

echo "60 ft * 40 ft equals $Metersquare square meters"

######
sqyard_sqft=9
acre_sqyard=4840
N=25
area_sqft=$(( length * breadth * N ))
area_sqyard=$(( area_sqft / sqyard_sqft ))
area_acre=$(( area_sqyard / acre_sqyard ))

echo "Area of 25 plots equals $area_acre in acres"

