Laboratório Active Directory Híbrido (On-Prem + Cloud) - Atualizado com Intune
Visão Geral

Este projeto consiste na construção prática de um ambiente de identidade híbrida, integrando um Active Directory local com a nuvem por meio do Microsoft Entra ID. O objetivo foi simular um cenário corporativo real, aplicando boas práticas de gerenciamento de identidade, controle de acesso e resolução de problemas – situações comuns no dia a dia da área de TI.

Ambiente

O laboratório foi estruturado utilizando máquinas virtuais para reproduzir uma rede corporativa:

Domain Controller (Windows Server Core)
Servidor membro (Desktop Experience)
Máquina cliente (Windows 11 Pro)
Funcionalidades Implementadas

Durante o desenvolvimento do projeto, foram implementados os seguintes recursos:

Active Directory Domain Services (AD DS)
Estrutura de Unidade Organizacional (departamento Financeiro)
Criação e gerenciamento de usuários via PowerShell
Grupos de segurança com controle baseado em função (RBAC)
File Server com permissões NTFS e compartilhamento SMB
Aplicação de política de grupo (GPO) para padronização de ambiente (papel de parede)
Integração híbrida com Azure AD Connect
Sincronização com Microsoft Entra ID
Validação do ambiente em máquina cliente
File Server

Foi configurado um servidor de arquivos com segmentação de acesso para simular um ambiente departamental:

ContasPagar
ContasReceber

O controle de acesso foi realizado por meio de grupos do Active Directory, garantindo separação adequada de permissões.

Identidade Híbrida

Para integração com a nuvem, foram implementados:

Azure AD Connect configurado
Sincronização de hash de senha habilitada
Sincronização de usuários entre o AD local e o Entra ID

Validação:

Usuários sincronizados e visíveis no Microsoft Entra ID
Autenticação em serviços cloud funcionando corretamente
Aplicação de GPO validada na máquina cliente
Controle de acesso aos arquivos funcionando conforme as permissões definidas
Login na VM cliente usando o e-mail do Azure (UPN) com a senha do AD local
Microsoft Intune (Seção Adicional)

Para gerenciamento de dispositivos e políticas de compliance, foi utilizado o Microsoft Intune, permitindo:

Aplicação de políticas de compliance e restrições (USB, Control Panel)
Gerenciamento de Update Rings para controle de patches
Deploy de aplicativos (ex: Google Chrome)
Windows Autopilot para onboarding automático de dispositivos (opcional)
Monitoramento de dispositivos e logs de autenticação

Durante a implementação, foram enfrentados e resolvidos alguns desafios comuns:

Problemas de resolução de DNS
Configuração de rede em ambiente virtual (NAT e Host-only no VMware)
Erros de autenticação com serviços Azure
Problemas relacionados ao navegador durante a configuração
Tecnologias Utilizadas
Windows Server
Active Directory
PowerShell
Microsoft Entra ID
Azure AD Connect
Microsoft Intune
VMware
Resumo Profissional

Este projeto demonstra a implementação de um ambiente híbrido completo, integrando Active Directory local ao Microsoft Entra ID. Foram aplicados conceitos de controle de acesso, automação com PowerShell, gerenciamento de políticas (GPO) e resolução de problemas em um cenário próximo ao real. O teste de login com e-mail do Azure na VM usando a senha do AD local evidencia a integração correta da identidade híbrida.

Autor

Victor Lino
