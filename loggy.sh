echo "enter Date"
read d
echo "enter the mnth "
read m
echo "year"
read y
grep -i $d/$m/$y access.log |  awk '{ print $1 }' | sort -n | uniq -c | sort -rn | head > log.txt
