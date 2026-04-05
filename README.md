Hybrid Active Directory Lab (On-Prem + Cloud) - Updated with Intune
Overview

This project consists of building a hybrid identity environment, integrating an on-premises Active Directory with Microsoft Entra ID. The goal was to simulate a real corporate scenario, applying best practices in identity management, access control, and troubleshooting – common tasks in IT operations.

Environment

The lab was set up using virtual machines to reproduce a corporate network:

Domain Controller (Windows Server Core)
Member Server (Desktop Experience)
Client Machine (Windows 11 Pro)
Implemented Features

During the project, the following resources were implemented:

Active Directory Domain Services (AD DS)
Organizational Unit structure (Finance department)
User creation and management via PowerShell
Security groups with Role-Based Access Control (RBAC)
File Server with NTFS permissions and SMB sharing
Group Policy (GPO) application to standardize the environment (wallpaper)
Hybrid integration with Azure AD Connect
Synchronization with Microsoft Entra ID
Validation of the environment on client VM
File Server

A file server was configured with departmental folder segmentation:

AccountsPayable
AccountsReceivable

Access control was performed using AD groups, ensuring proper separation of permissions.

Hybrid Identity

For cloud integration, the following was implemented:

Azure AD Connect configured
Password hash synchronization enabled
Users synchronized between on-premises AD and Entra ID

Validation:

Users synchronized and visible in Microsoft Entra ID
Cloud service authentication working correctly
GPO applied successfully on the client VM
File access controlled according to permissions
Login on client VM using Azure email (UPN) with AD local password
Microsoft Intune – Additional Section

For device management and compliance, Microsoft Intune was used, allowing:

Compliance policies and restrictions applied (USB, Control Panel)
Update Rings management for patch control
Application deployment (e.g., Google Chrome)
Windows Autopilot for automatic device onboarding (optional)
Device and sign-in log monitoring

During implementation, common challenges were faced and resolved:

DNS issues
Virtual network configuration (NAT and Host-only in VMware)
Azure authentication errors
Browser-related issues during setup
Technologies Used
Windows Server
Active Directory
PowerShell
Microsoft Entra ID
Azure AD Connect
Microsoft Intune
VMware
Professional Summary

This project demonstrates the implementation of a complete hybrid environment, integrating on-premises AD with Microsoft Entra ID. Concepts of access control, PowerShell automation, policy management (GPO), and troubleshooting were applied. Testing login on the VM using Azure email with the local AD password demonstrates proper hybrid identity functionality.

Author

Victor Lino
