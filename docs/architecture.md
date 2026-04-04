# Lab Architecture  Arquitetura do Laboratório

This lab simulates a corporate environment with hybrid identity.

## Components  Componentes
- AD Server Windows Server Core, OU Financeiro, Security Groups
- File Server NTFS + SMB shares for ContasPagar and ContasReceber
- Clients Windows 11 Pro, joined to AD
- Azure Integration Azure AD Connect + Entra Provisioning

## Diagram  Diagrama
![Lab Diagram](..imageslab-diagram.png)

## Notes  Observações
- Users and groups follow security best practices
- Client access controlled via NTFS and SMB permissions