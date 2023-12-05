# Assignment 2.11

### What is cloud architecture design - Security?

It refers to a set of principles and practices that is used to protect the components and assets within the cloud. Its main goal is to protect against potential threats, unauthorised access, data breaches and service disruptions.

All these is required to protect the business and prevent potential losses for the company.

These principles include IAM, data encryption, network security, security monitoring, incident response are some of the few key concepts.

### How will I implement Cloud Architecture Design - Security?

Identity Access Management (IAM)
- Set up IAM roles & policies to manage user access and permissions
- Implement the least access required for the particular person.

VPC
- Do isolation and use subnets to control access

Data Encryption
- Implement SSL/TLS Certification
- AWS Certificate Manager for managing them
- Data encryption using AWS Key Management Service

Network Security
- Use AWS Shield for DDos protection
- AWS WAF for web application attacks

Logging and Monitoring
- Use AWS CloudTrail for logging API Activity
- AWS CloudWatch for monitoring and setting alarms

Incident Response
- Integrate AWS services, like CloudWatch Alarms and AWS Lambda for automated responses
- Use AWS CloudTrail for security incidents

Backups
- Versioning control for S3
- Database backups