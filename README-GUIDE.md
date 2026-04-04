
---

## `README-GUIDE.md`

```markdown
# Hybrid AD Lab Guide / Guia do Laboratório AD Híbrido

Guia completo para replicar um ambiente híbrido de AD local + Azure AD / Entra ID.  
Complete guide to replicate a hybrid on-prem AD + Azure AD / Entra ID environment.

## Estrutura
- `docs/` → Documentação detalhada / Detailed documentation  
- `scripts/` → Scripts do Server Core / Server Core scripts  
- `images/` → Diagramas e prints / Diagrams and screenshots  

## Passo a passo / Step-by-step
1. Criar usuários: `create-users.ps1`  
2. Criar grupos e adicionar usuários: `create-groups.ps1`  
3. Criar pastas e permissões: `permissions.ps1`  
4. Resetar senhas: `reset-passwords.ps1`  
5. Criar GPO de wallpaper: `gpo-wallpaper.ps1`  