#!/bin/bash
#start SQL Server
sh -c "
echo 'Sleeping 20 seconds before running setup script'
sleep 20
echo ‘Starting setup script'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${1} -i /tmp/restore-database.sql
echo ‘Finished setup script'
exit" &
exec /opt/mssql/bin/sqlservr