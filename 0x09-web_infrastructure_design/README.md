# 0x09 WEB INFRASTRUCTURE DESIGN
## Task 0: Simple web stack
A one server web infrastructure that hosts a website reachable via www.foobar.com using LAMP stack.
In this case, LNMP: L-Linux, N-Nginx, M-MySQL and P-Python.
## Task 1: Distributed web infrastructure
A three server web infrastructure that hosts the website www.foobar.com with HAproxy load balancer.
## Task 2: Secured and monitored web infrastructure
A three server web infrastructure that hosts the website www.foobar.com. It features: 
   i. security with one terminating(at Load Balancer) SSL (Secure Sockets Layer) certificate serving the website www.foobar.com over HTTPS protocol 
   ii. three firewalls protecting the three servers
   iii. three Datadog agents monitoring the three servers and directly reporting to Datadog
