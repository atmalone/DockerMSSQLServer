FROM mcr.microsoft.com/mssql/server:2017-latest

ARG USERNAME
ARG PASSWORD
ARG SA_PASSWORD

# RUN apt-get update && apt-get install -y smbclient && \
# smbclient //<IP-ADDRESS>/<DRIVE>/ -U <DOMAIN>\\$USERNAME%$<PASSWORD -c ‘cd <DIRECTORY> ; lcd tmp/ ; get <YOUR-FILE>.bak’

RUN apt-get update && \
    apt-get install -yq curl apt-transport-https && \
    # Get official Microsoft repository configuration
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list | tee /etc/apt/sources.list.d/mssql-server.list && \
    apt-get update && \
    apt-get install -y mssql-server-fts && \
    # Cleanup the Dockerfile
    apt-get clean && \
    rm -rf /var/lib/apt/lists

COPY AdventureWorks2017.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp

CMD /bin/bash /tmp/entrypoint.sh $SA_PASSWORD
