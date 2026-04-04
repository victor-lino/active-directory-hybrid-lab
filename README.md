Active Directory Hybrid Lab (On-Prem + Cloud)
Overview

This project is a hands-on lab where I built a complete hybrid identity environment, combining an on-premises Active Directory with cloud identity using Microsoft Entra ID.
The main goal was to simulate a real corporate scenario, applying best practices for identity management, access control, and troubleshooting – challenges commonly faced in real IT environments.

Portuguese version available: README-PT.md

Environment

The lab was structured using virtual machines to replicate a real network:

Domain Controller (Windows Server Core)
Member Server (Desktop Experience)
Client machine (Windows 11 Pro)
What I Implemented

In this project, I worked on several key components of a corporate environment:

Active Directory Domain Services (AD DS)
Organizational Units (Finance department structure)
User creation and management via PowerShell
Security groups (RBAC – Role-Based Access Control)
File Server with NTFS and SMB permissions
Group Policy (GPO) for wallpaper deployment
Hybrid identity with Azure AD Connect
Integration with Microsoft Entra ID
End-user validation using a Windows 11 client
File Server

I configured a file server with segmented access to simulate a real department structure:

ContasPagar (Accounts Payable)
ContasReceber (Accounts Receivable)

Access was controlled using Active Directory groups, ensuring proper permission separation.

Hybrid Identity

To extend identity to the cloud, I implemented:

Azure AD Connect
Password Hash Synchronization
User synchronization between on-prem AD and Entra ID

This allowed users created locally to authenticate in cloud services.

Validation

To ensure everything was working as expected, I tested:

User synchronization in Microsoft Entra ID
Successful authentication in cloud services
GPO application on the client machine
File access restrictions based on group permissions
Login on the client VM using the Azure email (UPN) with the on-prem AD password, confirming that the hybrid identity integration was fully functional
Challenges & Troubleshooting

During the project, I faced and solved several real-world issues, such as:

DNS resolution problems
Network configuration (NAT + Host-only in VMware)
Azure authentication errors
Embedded browser issues during login

These troubleshooting steps were a key part of the learning process.

Technologies Used
Windows Server
Active Directory
PowerShell
Microsoft Entra ID
Azure AD Connect
VMware
Professional Summary

In this project, I designed and implemented a hybrid identity environment integrating on-premises Active Directory with Microsoft Entra ID.
I applied concepts such as access control, automation with PowerShell, Group Policy management, and real-world troubleshooting.
The successful login with the Azure email (UPN) on the client VM using the on-prem AD password demonstrates the practical functionality of the hybrid identity setup.

Author

Victor Lino
