Project FutureUS
================

Overview
--------

This will build out a multi-layer environment consisting of 5 different server roles.  Each server role will have it's own specific applications/software automatically installed, configured and any outstanding updates performed.  This will allow for quick and easy scalability in cases where higher than normal traffic patterns are expected.  This will also also promote easy administration as you will just have to edit one configuration file and it will get pushed out to the appropriate servers.


Server Roles
------------

Webserver:

- nginx


Backend:

- Redis
- Solr
- python-memcache
- python


Application:

- python
- python-memcache
- uwsgi
- uwsgi_sites


Database:

- MySQL


Cache:

- memcached


How does it really work?
------------------------

By combining the functionality of saltstack and salt-cloud, we can build this environment out with ease!  


Salt-cloud is a public cloud provisioning tool. Salt cloud is made to integrate Salt into cloud providers in a clean way so that minions on public cloud systems can be quickly and easily modeled and provisioned.  


Saltstack is an infrastructure management software that is easy to get running in minutes, scalable enough to manage thousands of servers and fast enough to communicate with them in seconds.


How to use salt-cloud
---------------------

Salt-cloud is easy to use, just need to get the configuration files setup properly on your Salt-master server.  There are just two main configuration files to create.  


Within the following file is where you Rackspace Cloud credentials reside.  This file is what allows you to communicate with your Rackspace Environment:


/etc/salt/cloud.providers.d/rackspace.conf


Within the following file is where you define the technical portion of the cloud servers you wish to deploy.  Within this file you can contain every OS and flavor that Rackspace offers, or you can use custom images you create.  You just need to give them unique names to identify them by:


/etc/salt/cloud.profiles.d/rackspace.conf


With these two configuration files in place, you can now start creating cloud servers at Rackspace with a few simple commands.  To create this environment we also created a mapfile that allows us to define how many servers we are creating, what size they are to be, what the server name is and what role that server plays:


/srv/salt/mapfile - This is where the magic happens.  Within this file we decide what sort of environment we want deployed.  We can have servers added, or removed based on this file.  You decide the name, how big the server is, what role the server is, and then you use salt-cloud to build it out.


The following command builds the environment:

```shell
salt-cloud -m /srv/salt/mapfile -P; salt '*' state.highstate
```

How to use saltstack
--------------------

Saltstack can be as complex or as easy to setup as you want, it just completely depends on how much you are wanting to do.  In our case, it's a fairly easy setup that pushes out a fairly complex environment.  All relevant files are located in /srv/salt or a subdirectory within there.  Here are the directories and what they contain:


/srv/salt/webserver/ - This contains the state file for the webserver(s) as well as any configuration files related to that server type.


/srv/salt/database/ - This contains the state file for the database server(s) as well as any configuration files related to that server type.


/srv/salt/application/ - This contains the state file for the application server(s) as well as any configuration files related to that server type.


/srv/salt/cache/ - This contains the state file for the application server(s) as well as any configuration files related to that server type.


/srv/salt/backend/ -This contains the state file for the backend server(s) as well as any configuration files related to that server type.


/srv/salt/packages/ - Contains the state file for particular packages.  When you reference a package in your server type state file, it will look here to see what it is suppose to do with that particular package.


We also have two very important files that help make all of this possible located in the /srv/salt directory:


/srv/salt/top.sls - This is the state file where we define the roles and what is to be done based on the role.
