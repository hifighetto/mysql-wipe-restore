#!/bin/bash 
USER=username
PASS=mysupersecretivepasswordthatalwaysworksperiod
DB=myfancydatabase
HOST=mysqlserver01thatisnotinproduction 

echo "Type the name of your database restore:" 
read dbrestore 

echo "Create the array file" #This can be done better!!! 
mysql -h $HOST  -u $USER -p$PASS  -Nse "show tables" $DB  > tables.txt 

while read table ; do 
echo "remove the table $table" 
mysql -h $HOST  -u $USER -p$PASS -e "drop table $table" $DB

done < tables.txt
 
# Cleanup 
rm tables.txt

echo "restore the database" 
mysql -h $HOST -u $USER -p$PASS $DB < $dbrestore 
