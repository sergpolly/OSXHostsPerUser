/bin/cp /Users/Shared/hosts_strict.txt /private/etc/hosts
#/usr/bin/dscacheutil -flushcache
echo "abrakadabra" $2 $1
#echo "#ACHTUNG! logged as " $2  $1 >> /private/etc/hosts
#echo "#ACHTUNG! logged as " $2  $1 >> /Users/Shared/.hosts
/usr/bin/dscacheutil -flushcache
