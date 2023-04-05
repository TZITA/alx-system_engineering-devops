# LOAD BALANCER

## Task 0:
## Double the number of webservers
Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
	The name of the custom HTTP header must be 'X-Served-By'.
	The value of the custom HTTP header must be the hostname of the server Nginx is running on.

## Task 1: 
## Install your load balancer
Install and configure HAproxy on your lb-01 server.
	Configure HAproxy so that it send traffic to web-01 and web-02
	Distribute requests using a roundrobin algorithm
	Make sure that HAproxy can be managed via an init script
	Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.

## Taskc2:
## Add a custom HTTP header with Puppet
Just as in task #0, automates the task of creating a custom HTTP header response, but with Puppet.
	The name of the custom HTTP header must be X-Served-By
	The value of the custom HTTP header must be the hostname of the server Nginx is running on
