#!/bin/bash

# determine installed auditd version
installed_version=$(dpkg -l | grep auditd | sed 's/.*1://g' | sed 's/-1.*//g' | sed 's/\.//g')
required_version=260

# check if the version is fully supported
if [ $installed_version \> $required_version ];
then
    echo "auditd version supported";
    echo "replacing log_name in /etc/audit/auditd.conf to ENRICHED"
    sed -Ei 's/^log_format ?=.*/log_format = ENRICHED/g' /etc/audit/auditd.conf

else
    echo "it's recommended to install a version later than auditd 2.6.0";
    echo "using a auditd version > 2.6.0 do not support enriched usernames for remote correlation"
fi;

echo "replacing name_format in /etc/audit/auditd.conf to HOSTNAME"
sed -Ei 's/^name_format ?=.*/name_format = HOSTNAME/g' /etc/audit/auditd.conf

# copy the auditset over / create user choices

augenrules
service auditd restart
service auditd status
