    let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
    let secs=$((${upSeconds}%60))
    let mins=$((${upSeconds}/60%60))
    let hours=$((${upSeconds}/3600%24))
    let days=$((${upSeconds}/86400))
    UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

    # get the load averages
    read one five fifteen rest < /proc/loadavg

    echo "$(tput setaf 2)
         T U X        `date +"%A, %e %B %Y, %r"`
         =====        `uname -srmo`$(tput setaf 1)

          .--.        Uptime.............: ${UPTIME}
         |o_o |       Memory.............: `cat /proc/meminfo | grep MemFree | awk {'print $2'}`kB (Free) / `cat /proc/meminfo | grep MemTotal | awk {'print $2'}`kB (Total)
         |:_/ |       Load Averages......: ${one}, ${five}, ${fifteen} (1, 5, 15 min)
        //   \ \      Running Processes..: `ps ax | wc -l | tr -d " "`
       (|     | )     IP Addresses.......: `/sbin/ifconfig eth0 | /bin/grep "inet addr" | /usr/bin/cut -d ":" -f 2 | /usr/bin/cut -d " " -f 1` and `wget -q -O - http://icanhazip.com/ | tail`
      /'|_   _/'\     Weather............: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=47167_pc" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
      \___)=(___/     Free Disk Space....: `df -Pk | grep -E '^/dev/loop0' | awk '{ print $4 }' | awk -F '.' '{ print $1 }'`k on /
    $(tput sgr0)"

    [[ -f ~/.bashrc ]] && . ~/.bashrc

