# Assignment 1.9

Different companies have different applications and have different architectural needs. As a group, choose among the choices and discuss what kind of servers / server configuration / virtualization will be needed.

1. A deposit / withdrawal system for a rural bank located in the province

- Server configuration: High redundancy, high availability, security and scability
- Virtualisation may be necessary to host different microservices within the bank. E.g. Payment system, corebanking system, loan system
- Disaster recovery will be important because bank's availability always has to be there
- Monitoring servers to ensure that you know when bank may be facing a failure
- Proxy servers to prevent people from entering to the database

2. A record keeping system for a chain of hospitals

- Server configuration: High redundancy, fast reading storage, security for patient's data
- Virtualisation : Sensitive patient information, billing records, basic adminstrative
- Disaster Recovery for patient's data
- Proxy servers for high security and preventing people from entering the network
- File servers to download and read files quickly
