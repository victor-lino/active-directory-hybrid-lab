
---

## `README-HYBRID.md`

```markdown
# Hybrid Environment Lab / Laboratório de Ambiente Híbrido

Projeto demonstrando integração de AD local com Azure AD / Entra ID para gestão de identidade híbrida.  
Demonstrates integration of on-prem AD with Azure AD / Entra ID for hybrid identity management.

## Estrutura do projeto / Project Structure
- `docs/` → Documentação técnica / Technical documentation  
- `scripts/` → Scripts Server Core / Server Core scripts  
- `images/` → Prints do lab / Lab screenshots  

## Scripts principais / Main Scripts
- `create-users.ps1` → Criação de usuários  
- `create-groups.ps1` → Criação de grupos e adição de usuários  
- `permissions.ps1` → Pastas, permissões NTFS/SMB  
- `reset-passwords.ps1` → Reset de senha  
- `gpo-wallpaper.ps1` → GPO de wallpaper corporativo  

## Como usar / How to run
Execute os scripts na ordem no Server Core com PowerShell:
```powershell
.\create-users.ps1
.\create-groups.ps1
.\permissions.ps1
.\reset-passwords.ps1
.\gpo-wallpaper.ps1