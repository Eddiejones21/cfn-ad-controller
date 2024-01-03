# cfn-ad-controller
The purpose of this repository is to document the manual and programmatic (CloudFormation) process of deploying an Active Directory Domain Controller.

## What I learned: 
    - When deploying the infrastructure as code, I believe that it was an easier process programmatically opposed to deploying manually. 
    - Using infrastructure as code had less steps and was easier to follow documentation. (https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-reference.html)

### 1. Manual:
    - Deployed a Windows Server 2016 using VMware Fusion
        - Downloaded And installed VMware Fusion (https://www.vmware.com/products/fusion/fusion-evaluation.html)
        - Created a virtual machine of a Window server 2016 (https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016)
        - I added the Iso file to the CD/DVD SATA drive. 
        - I configured a bridge network adapter to connect to my local wifi
        - Started the Virtual machine up, Chose a custom install to select my virtual disk
        - I assigned a static IP address by going to the network and sharing center, change adapter options, right clicked on the adapter and went into properties where I selected IPV4 (internet Protocol version 4) then clicked properties
        - In server manager I selected manage then add roles and features
        - I then added active directory domains
        - Promoted the server to a new domain controller by adding it as a new forest
        - I opened the active directory computers and users tools and added a new user to the domain admin group

### 2. Infrastructure as Code:
    - Created this GitHub repository
    - Built out the CFN template to deploy the following Resources:
        - 1 Windows EC2 Instance (ami-06938c7701be658b4)
        - IAM roles
        - Instance profile
        - Security groups
    - Built out the parameters file specifying the following:
        - Subnets 
        - VPC
        - Route Tables
        - Image ID's
    - Deployed CFN
    



        

        







