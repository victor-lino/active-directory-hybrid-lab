# Hybrid Active Directory Lab / Laboratório de Active Directory Híbrido

Este projeto simula um ambiente corporativo híbrido com AD local + Azure AD / Entra ID.  
This project simulates a hybrid corporate environment with on-prem AD + Azure AD / Entra ID.

## Estrutura do projeto / Project Structure
- `docs/` → Documentação técnica e diagramas / Technical documentation and diagrams  
- `scripts/` → Scripts usados no Server Core / Scripts for Server Core configuration  
- `images/` → Prints de telas e diagramas / Screenshots and diagrams  

## Documentação / Docs
| Arquivo | Descrição | File | Description |
|---------|-----------|------|-------------|
| architecture.md | Arquitetura do lab | architecture.md | Lab architecture explanation |
| network.md | Configuração de rede | network.md | Network configuration |
| troubleshooting.md | Problemas e soluções | troubleshooting.md | Troubleshooting common issues |
| gpo.md | GPO de wallpaper | gpo.md | Corporate wallpaper GPO |
| azure-integration.md | Integração Azure AD | azure-integration.md | Azure AD / Entra provisioning |

## Scripts usados / Server Core Scripts
| Script | Descrição | Description |
|--------|-----------|-------------|
| create-users.ps1 | Cria usuários financeiro1-10 | Creates users financeiro1-10 |
| create-groups.ps1 | Cria grupos e adiciona usuários | Creates groups and adds users |
| permissions.ps1 | Cria pastas, aplica permissões NTFS/SMB | Creates folders, sets NTFS/SMB permissions |
| reset-passwords.ps1 | Reseta senha dos usuários | Resets users’ passwords |
| gpo-wallpaper.ps1 | Cria GPO de wallpaper corporativo | Creates corporate wallpaper GPO |

## Como usar / How to run
1. Abra PowerShell no Server Core como administrador  
2. Navegue até a pasta `scripts/`  
3. Execute os scripts na ordem:
```powershell
.\create-users.ps1
.\create-groups.ps1
.\permissions.ps1
.\reset-passwords.ps1
.\gpo-wallpaper.ps1