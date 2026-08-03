#!/bin/bash

username=""

inst="$1"
model="$2"
forcing="$3"
variant="$4"
hemisphere="$5"

repo=~/Documents/GitHub/track_data/tropical_cyclones/model_simulations/CMIP6-HighResMIP

out_path=${repo}/${inst}/${model}/${forcing}/${hemisphere}
echo ${out_path}
mkdir -p ${out_path}

if [ "${hemisphere}" == "NH" ]; then
    sign="pos"
elif [ "${hemisphere}" == "SH" ]; then
    sign="neg"
fi

for y in $(seq 1950 2014); do
    echo $y
    if [ "${hemisphere}" == "NH" ]; then
        season="jan-dec${y}"
    elif [ "${hemisphere}" == "SH" ]; then
        season="jul-jun${y}$((y+1))"
    fi
    scp -r ${username}@xfer-vm-02.jasmin.ac.uk:~/huracan/data/tracks/tropical_cyclones/TRACK/HiResMIP/HiResMIP/${inst}/${model}/${forcing}/TC/${hemisphere}/${model}_${forcing}_${variant}_gn_VOR_vertavg_${season}_T63/tr_trs_${sign}.2day_addvorT63_addwind_addmslp.tcident.new /Users/bakera/Downloads/
    echo ${out_path}/tr_trs_${sign}.${y}.2day_addvorT63_addwind_addmslp.tcident.new
    mv ~/Downloads/tr_trs_${sign}.2day_addvorT63_addwind_addmslp.tcident.new ${out_path}/tr_trs_${sign}.${season}.2day_addvorT63_addwind_addmslp.tcident.new
done
