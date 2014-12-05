soa_docker_demo
===============

Just messing around doing service discovery with consul, registrator, consul-template and haproxy


DEPENDENCIES:
docker (+boot2docker, I assume that you are using boot2docker on OSX although it should be really easy to modify the setup scripts for linux): https://www.docker.com/
fig: http://www.fig.sh/

NOTE: This could easily be done without fig...but I wanted to mess around with a local dev tool for docker and it DOES simplify the interface somewhat. Options are at least statically declared in the fig.yml file which saves typing and brain space.


To Setup:
./setup_demo.sh

And...that's it!
Now you can interface with consul, changing configuration parameters and these should appear in the config files for haproxy and the todo application.
To test the TODO application which hits the mysql database:
http://192.168.59.103:5000/tasks

To test the TODO application without hitting mysql (in case of issues):
http://192.168.59.103:5000


ADDITIONAL INFO:

To Stop/Start:
fig stop
fig start (after first launch)

To Start/Stop individual servcies:
fig stop <service>
fig start <service>

NOTE: Do NOT use fig run to launch services again, use start/stop...if you launch another consul after you have already launched one you will get a bunch of log messages about not finding a node because the node has effectively "gone down". This is a downside of using fig.


TODO:
 * Make the todo application act differently based on a configuration so that it's easy to see the effects when you change a configuration in consul
