echo "INFORMATION OF CUREENT SERVER "
echo "today date"
date;
echo "----**----"
echo "CPU load"
uptime
echo "----**----"

echo "currently connected user"
w
echo " Total user login"
last -a | head -3

echo "Disk and memory usages"
df -h |xargs|awk '{print "Free/total disk: "$11"/ "$9""}'

free -m |xargs|awk '{print"Free/total memory: "$10" / "$8" MB"}'

echo "-----****-----"
echo "utilization of top process:"
top -b | head -3

echo "TCP Connection"

cat /proc/net/tcp/ wc -l

echo "Kernel name"
uname -r