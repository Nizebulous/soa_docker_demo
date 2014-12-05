export MYSQL_HOST=192.168.59.103  # Assuming you are using OSX and boot2docker

fig up -d
fig stop mysql
fig start mysql
echo "Sleeping for 4 to let mysql boot up!"
sleep 4
mysql -h $MYSQL_HOST -u root -ppassword < todo.sql
source load_config.sh
fig start consultemplate
