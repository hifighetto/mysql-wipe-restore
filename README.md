# mysql-wipe-restore
A simple script to drop the tables in a database and restore them from backup. 

This is a simple script to remove all the database tables, and then restore the mysql database. 
This is a simple step you can do if you have console access to your MySQL server, but not root access on that server.
Change the variables to suit your environment for User Name, Password, Database Name, Hostname of the mysql server. 

It will prompt you for a database to restore as well. If you do not have a db to restore, just comment out that line 
