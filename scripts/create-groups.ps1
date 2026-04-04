<#
.SYNOPSIS
Cria grupos Financeiro_Pagar e Financeiro_Receber e adiciona usuários.

.DESCRIPTION
O script cria os grupos na OU Financeiro e adiciona os usuários financeiro1-5 ao grupo Pagar 
e financeiro6-10 ao grupo Receber.
#>

New-ADGroup -Name "Financeiro_Pagar" -GroupScope Global -Path "OU=Financeiro,DC=SANTECHSOUS,DC=local"
New-ADGroup -Name "Financeiro_Receber" -GroupScope Global -Path "OU=Financeiro,DC=SANTECHSOUS,DC=local"

for ($i=1; $i -le 5; $i++) {
    Add-ADGroupMember -Identity "Financeiro_Pagar" -Members "financeiro$i"
}
for ($i=6; $i -le 10; $i++) {
    Add-ADGroupMember -Identity "Financeiro_Receber" -Members "financeiro$i"
}

Write-Output "Grupos criados e usuários adicionados."