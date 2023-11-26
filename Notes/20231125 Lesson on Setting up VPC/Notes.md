Using ap-southeast-1 region (Singapore)

Create a VPC with IPV4 range of 10.0.0.0/16 (Naming convention: YOURNAME-vpc)
Create 3 subnets with IPV4 range of 10.0.1.0/24, 10.0.2.0/24 and 10.0.3.0/24 respectively across the 3 availability zones, ap-southeast-1a, ap-southeast-1b, ap-southeast-1c (Naming convention: YOURNAME-public-1a, YOURNAME-public-1b, YOURNAME-public-1c)
Create 3 subnets with IPV4 range of 10.0.4.0/24, 10.0.5.0/24 and 10.0.6.0/24 respectively across the 3 availability zones, ap-southeast-1a, ap-southeast-1b, ap-southeast-1c (Naming convention: YOURNAME-private-1a, YOURNAME-private-1b, YOURNAME-private-1c)
Create 3 subnets with IPV4 range of 10.0.7.0/24, 10.0.8.0/24 and 10.0.9.0/24 respectively across the 3 availability zones, ap-southeast-1a, ap-southeast-1b, ap-southeast-1c (Naming convention: YOURNAME-db-1a, YOURNAME-db-1b, YOURNAME-db-1c)
Create an Internet Gateway (Naming convention: YOURNAME-igw) and then right-click to attach it to your own VPC which you created in Step 1 above.
Create a NAT Gateway and place it in the appropriate subnet above. Also need to click on "Allocate Elastic IP" (Naming convention: YOURNAME-ngw-1a or YOURNAME-ngw-1b or YOURNAME-ngw-1c. The alphabet at the end would be based on which subnet you place it in. If you place it in a 1a subnet, then u can call it YOURNAME-ngw-1a)
Create 3 route-tables, 1 each for public, private and db subnets. (Naming convention: YOURNAME-public-rt, YOURNAME-private-rt, YOURNAME-db-rt)
Associate the route tables you created above to the respective subnets. E.g. you can right click your public subnets -> Edit route table associations -> Select your route table
Edit the route table routes such that the following conditions are satisfied:
Resources in the public subnets can talk to the Internet, and things on the internet can also talk to resources in public subnets (bilateral communication)
Resources in the private subnets can only talk to the internet (one way out only)
Resources in the db subnets can only communicate within the VPC
Bonus: Identify any single point of failure in the networking set up above, and see how you can rectify it
Note: Feel free to also set up resources in the subnets (EC2, RDS etc. to verify your network connectivity)