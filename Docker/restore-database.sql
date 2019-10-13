RESTORE DATABASE [AdventureWorks] FROM DISK = 'C:\Git\AdventureWorks2017.bak'
WITH FILE = 1,
MOVE 'AdventureWorks2017' TO 'var/opt/mssql/data/AdventureWorks.mdf',
MOVE 'AdventureWorks2017_log' TO 'var/opt/mssql/data/AdventureWorks.ldf'
GO