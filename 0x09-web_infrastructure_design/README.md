# 0x09 WEB INFRASTRUCTURE DESIGN

## Task 0: Simple web stack

A one server web infrastructure that hosts a website reachable via www.foobar.com using LAMP stack.
In this case, LNMP: L-Linux, N-Nginx, M-MySQL and P-Python.

## Task 1: Distributed web infrastructure

A three server web infrastructure that hosts the website www.foobar.com with HAproxy load balancer which is enabling Active-Active setup.

## Task 2: Secured and monitored web infrastructure

A three server web infrastructure that hosts the website www.foobar.com. It features: 

 1. Security with one terminating(at Load Balancer) SSL certificate serving the website www.foobar.com over HTTPS protocol (Valnuarable to Man-In-The-Middle(MITM) attack),  
 2. Three firewalls protecting the three server, and
 3. Three Datadog agents monitoring the three servers and directly reporting to Datadog.

## Task 3: Scale up

 A web infrastructure that hosts the website www.foobar.com. It features:
 1. Two HAproxy Load Balancer configured as a cluster. (Redundancy to eliminate SPOF)
 2. Four web servers, four app servers and one primary database server with three replica servers.
 3. Each server is protected by it's own firewall.
 4. Communication between any two servers is secured using SSL certification. (Eliminating MITM attack)
