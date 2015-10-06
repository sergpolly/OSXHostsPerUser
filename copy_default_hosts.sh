/bin/cp /Users/Shared/hosts_def.txt /private/etc/hosts
#/usr/biin/dscacheutil -flushcache
echo "defaulting" $1 $2
#echo "ACHTUNG! logged as " $1 >> /private/etc/hosts
#echo "ACHTUNG! logged as " $1 >> /private/etc/hosts
#echo "ACHTUNG! logged as " $1 >> /Users/Shared/.hosts_def
/usr/bin/dscacheutil -flushcache
