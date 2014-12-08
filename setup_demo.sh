export MYSQL_HOST=192.168.59.103  # Assuming you are using OSX and boot2docker

fig up -d --no-recreate
fig stop todo
fig start todo
fig stop mysql
fig start mysql
echo "Sleeping for 4 to let mysql boot up!"
sleep 4
docker exec $(docker ps | grep -m 1 mysql | awk '{print $1;}') cat /data/todo.sql | mysql -u root -ppassword
source load_config.sh
fig start consultemplate
