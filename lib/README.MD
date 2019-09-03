
Events in the Opensim Viewer, courtesy of http://yourworlds.eu/hypevents/

I run on Windows using ODBC, so you may need to install Strawberry perl for a Windows box,  or use linux and  come up with a database connect string.

You need a text file that has the database info.

This can probably be just a dbi: syntax, this is a Data Source syntax.

DSN=ossearch:localhost:3306;UID=searchDatabasename;PWD=SomePassword;

