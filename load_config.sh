export CONSUL_HOST=192.168.59.103  # Assuming you are using OSX and boot2docker
export CONSUL_PORT=8500  # default

curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/haproxy/maxconn -d "256"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/haproxy/mode -d "http"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/haproxy/timeouts/connect -d "5000ms"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/haproxy/timeouts/client -d "50000ms"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/haproxy/timeouts/server -d "50000ms"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/todo/db_host -d "haproxy"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/todo/db_port -d "3306"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/todo/db_user -d "root:password"
curl -s -X PUT http://$CONSUL_HOST:$CONSUL_PORT/v1/kv/service/todo/db_name -d "todo"
