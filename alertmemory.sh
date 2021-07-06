
#!/bin/bash 
#######################################################################################
#Script Name    :alertmemory.sh
#Description    :send alert mail when server memory is running low
#Email          :server.monitor@gmail.com
#License       : GNU GPL-3	
#######################################################################################
## declare mail variables
##email subject 
subject="Server Memory Status Alert"
##sending mail as
from="server.monitor@example.com"
## sending mail to
to="server.monitor2@gmail.com"
## send carbon copy to
also_to="server.monitor3@example.com"

## get total free memory size in megabytes(MB) 

free=$(free -mt | grep Total | awk '{print $4}')


## check if free memory is less or equals to  10MB
if [[ "$free" -ge 20 ]]; then
        ## send email if system memory is running low
        echo -e "Warning, server memory is running low!\n\nFree memory: $free MB" | mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
fi

uptime=$(uptime | awk '{print $9}' | sed 's/,//')

if [[ "$uptime" -ge 20 ]]; then
        ## send email if system memory is running low
        echo -e "Warning, server memory is running low!\n\nFree memory: $free MB" | mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
fi
if [[ "$free" -ge 20  ]]; then
        ## send email if system memory is running low
        echo -e "Warning, server memory is running low!\n\nFree memory: $free MB" | mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
fi