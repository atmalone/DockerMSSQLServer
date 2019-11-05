FROM mcr.microsoft.com/mssql/server:2017-latest

ARG USERNAME
ARG PASSWORD
ARG SA_PASSWORD

# RUN apt-get update && apt-get install -y smbclient && \
# smbclient //<IP-ADDRESS>/<DRIVE>/ -U <DOMAIN>\\$USERNAME%$<PASSWORD -c ‘cd <DIRECTORY> ; lcd tmp/ ; get <YOUR-FILE>.bak’

COPY AdventureWorks2017.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp

CMD /bin/bash /tmp/entrypoint.sh $SA_PASSWORD