#/bin/bash
echo "_____________________________________________"

for i in $(cat links.txt)
do
echo $i
curl -i -X OPTIONS http://$i 2>/dev/null | grep "Allow"  
echo "Forcing PUT method"
curl http://$i --upload-file links.txt 2>/dev/null | egrep "Allow"

echo "_____________________________________________"
done

