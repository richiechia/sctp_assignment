# Create RDS 

Create an RDS Cluster with the following configs and leave everything else to default:
1) Engine Type - Aurora MySQL or MySQL
2) Templates - Dev/Test
3) Settings:
	DB cluster identifier - Give it a unique name
	Master username - leave  it as admin
	Master password - to be set
4) Instance configuration - Choose burstable classes and select db.t3.medium
5) Don't create Aurora Replica
6) Connectivity:
	Dont connect to an EC2 compute resource
	Choose c4_sandbox_vpc
	Choose No for public access
	Choose mysql-allow-public-subnet security group
7) Leave all other configs as default and click on "Create database"

# Create EC2 Instance
Create an EC2 instance to be used to test connectivity to the RDS instance above:
1) Choose Amazon Linux 2 AMI HVM (Free tier Eligible)
2) Choose any key pair or proceed without key pair
3) Network Settings:
	Choose c4_sandbox_vpc
	Choose any of the 2 public subnets
	Auto assign public IP enable
	Select existing security group -> allow-all-ssh

# When using the AWS Terminal
ssh into the instance using instance connect
sudo yum update -y
sudo yum install mysql

# When connecting tot he RDS instance
To connect to the RDS instance above:
Logic: mysql -u admin -h your-rds-endpoint -P 3306 -p
Example: mysql -u admin -h richie-database.cluster-cnge2fzfx0rs.ap-southeast-1.rds.amazonaws.com -P 3306 -p




