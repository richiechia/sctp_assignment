## How to create use the chmod in linux, if faced with 0555 permissions error

Before being able to use chmod 400 on richie_linux.pem

1. Have to go into /etc folder
2. sudo vim wsl.conf

Within the wsl.conf, press i, to insert some modifications

[automount]
options = "metadata"

then quit
restart wsl with the command wsl --shutdown

3. Head back into the pem file directory.
4. Call ssh -i "xxxxx"

## How to create / launch the linux instance

VPC select c4_sandbox_vpc
subnet can choose private or public
If its public, auto-assign public IP
Select existing security group
Allow all SSH
