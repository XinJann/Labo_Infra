cat checking.asciart
echo
if [ $1 == "--update" ]; then
    echo "------ Updating packages.... ------"
    #sudo apt update
    echo "DONE"
fi

echo "Hostname : $(hostname)"
echo "kernel version : $(uname -r)"

echo "date : $(date +"%D %T" )"
echo "IPv4 : $(hostname -I | awk '{print $1}')"

t="$(hostname -i | awk '{print $1}')"
searchstring="%"
echo "IPv6 : ${t%%$searchstring*}"


searchstring="nameserver "

echo "List of DNS server(s) : "
cat /etc/resolv.conf | grep nameserver | while read line; do
    echo "${line#$searchstring}"
    # ... more code ... #
done

echo "Check if firewall is running...."

firewall_state="$(firewall-cmd --state)"
if [ $firewall_state == "running" ]; then
    echo "Firewall running ! :)"
else
    echo "Firewall not running :( :( :("
fi