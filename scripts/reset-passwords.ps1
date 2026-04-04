<#
.SYNOPSIS
Reseta a senha de todos os usuários na OU Financeiro.

.DESCRIPTION
Define a nova senha "NovaSenha123!" e força mudança no próximo login.
#>

Get-ADUser -Filter * -SearchBase "OU=Financeiro,DC=SANTECHSOUS,DC=local" | ForEach-Object {
    Set-ADAccountPassword $_ -Reset -NewPassword (ConvertTo-SecureString "NovaSenha123!" -AsPlainText -Force)
    Set-ADUser $_ -ChangePasswordAtLogon $true
}

Write-Output "Senhas resetadas para todos os usuários Financeiro."