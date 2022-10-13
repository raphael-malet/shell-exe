DATE=`date +%d-%m-%Y-%H:%M`
log=number_connection-$DATE
last raphaelmalet |grep raphaelmalet |wc -l |cat>./number_connection-$DATE && tar -czvf $log.tar.gz ./$log
rm $log
mv $log.tar.gz ./Backup
 

