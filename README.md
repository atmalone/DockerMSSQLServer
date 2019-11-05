# DockerMSSQLServer

1. Create a .env file on the root of the project at the same level as the docker-compose.yml and define the following:
    ```
    SA_PASSWORD=<YOUR-DB-PASSWORD>
    ACCEPT_EULA=Y
    USERNAME=<YOUR-USERNAME>
    PASSWORD=<YOUR-PASSWORD>
    ```
2. Create your script for restoring the database. Use the following command to assist you in getting the names of the .mdf and .ldf in your backup.
    ```RESTORE FILELISTONLY FROM DISK='<PATH-To-YOUR-BACKUP-FILE>' WITH FILE=1```

