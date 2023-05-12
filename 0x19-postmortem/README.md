Company X Database Overload Incident Report
The following is the incident report for company X database overload that occurred on May 5th, 2023.
Issue Summary:
At 11:02 AM GMT, the database servers became overloaded, and five minutes later, at 11:07 AM, they crashed. As a result, the website was inaccessible for precisely two hours until 1:02 PM, impacting 100% of users attempting to access it. The root cause of the crash was heavy traffic, which overwhelmed the servers.
Timeline (all times GMT):
	11:02 AM: Database server overloads
	11:07 AM: Database server crushes
	11:07 AM: Pagers alerted teams
	11:59 AM: Database restored from May 3rd, 2023 backup
	12:20 PM: Database server restarts begin
	01:02 PM: Database is back online and website becomes available
Root Cause:
At 11:02 AM GMT, a surge in traffic, possibly due to increased user activity following a successful ad campaign last month, began to overwhelm the database. Within five minutes, the server was unable to cope with the demand, and the website became unavailable to all users.
Resolution and Recovery:
The DataDog monitoring system notified our on-call engineer at 11:07 AM GMT, who immediately investigated and escalated the issue. By 11:30 AM, our incident response team had identified the issue and began restoring the database from the most recent backup (dated May 3rd, 2023). Once the restoration was complete, the team worked on rebuilding any lost data resulting from the crash. The server was restarted at 12:20 PM, and by 01:02 PM, the database was back online, and the website became available.
Corrective and Preventative Measures:
Following a thorough investigation of the incident, we have identified several actions to address the root cause of the issue, prevent future occurrences, and improve our response times. These actions include:
1.	Increasing the number of database servers from a single server to three servers to better handle the increase in the number of users and distribute the load evenly.
2.	Implementing a weighted least connection method of load balancing in front of the servers to optimize the server's performance and ensure that no one server becomes overloaded.
3.	Saving daily backups to ensure that we have the most up-to-date data and can recover from any potential data loss.
At Company X, we are committed to providing quality service to our users, and we appreciate your patience during this incident. We are continuously working to improve our systems and processes to ensure that we can provide the best service possible.
Sincerely,
Company X 

