#/bin/bash
echo "_____________________________________________"

for i in $(cat links.txt)
do
curl -i -X OPTIONS http://$i 2>/dev/null | grep "Allow"  
echo $i
echo "_____________________________________________"
done

