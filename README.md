# cfn-ad-controller
The purpose of this repository is to document the manual and programmatic (CloudFormation) process of deploying an Active Directory Domain Controller.

1. Manual
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


        







