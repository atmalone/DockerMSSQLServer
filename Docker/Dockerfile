FROM mcr.microsoft.com/mssql/server:2017-latest
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=24Seven!77
# # Install Unzip
# RUN apt-get update && \
# apt-get install unzip wget -y

# # Install SQLPackage for Linux and make it executable
# # RUN wget -progress=bar:force -q -O Northwind.zip https://www.mikesaysmeh.com/uploads/2012/11/Northwind.zip \
# #     && unzip -qq Northwind.zip -d /opt/northwind \
# #     && chmod +x /opt/northwind

COPY AdventureWorks2017.bak /tmp/
COPY restore-database.sql /tmp/

# Configure external build arguments to allow configurability.
# ARG DBNAME=AdventureWorks2017

# # # Launch SQL Server, confirm startup is complete, deploy the DACPAC, then terminate SQL Server.
# # # See https://stackoverflow.com/a/51589787/488695
RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 10 \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '24Seven!117' -i /tmp/restore-database.sql \
    && pkill sqlservr 