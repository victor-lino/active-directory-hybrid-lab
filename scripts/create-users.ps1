<#
.SYNOPSIS
Cria 10 usuários na OU Financeiro no AD local.

.DESCRIPTION
O script cria usuários financeiro1 até financeiro10, com senha inicial "Senha123!" 
e força troca de senha no próximo login.
#>

Import-Module ActiveDirectory

for ($i=1; $i -le 10; $i++) {
    New-ADUser -Name "financeiro$i" `
        -SamAccountName "financeiro$i" `
        -UserPrincipalName "financeiro$i@santechsous.local" `
        -AccountPassword (ConvertTo-SecureString "Senha123!" -AsPlainText -Force) `
        -Enabled $true `
        -Path "OU=Financeiro,DC=SANTECHSOUS,DC=local" `
        -ChangePasswordAtLogon $true
}

Write-Output "10 usuários criados com sucesso."