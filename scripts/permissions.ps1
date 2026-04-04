<#
.SYNOPSIS
Cria pastas ContasPagar e ContasReceber, aplica permissões NTFS e compartilha via SMB.

.DESCRIPTION
Define permissões apenas para os grupos correspondentes:
- Financeiro_Pagar na pasta ContasPagar
- Financeiro_Receber na pasta ContasReceber
#>

# Criação das pastas
New-Item -Path "C:\Financeiro\ContasPagar" -ItemType Directory -Force
New-Item -Path "C:\Financeiro\ContasReceber" -ItemType Directory -Force

# Permissões NTFS
icacls "C:\Financeiro\ContasPagar" /grant "Financeiro_Pagar:(OI)(CI)F"
icacls "C:\Financeiro\ContasReceber" /grant "Financeiro_Receber:(OI)(CI)F"

# Compartilhamento SMB
New-SmbShare -Name "ContasPagar" -Path "C:\Financeiro\ContasPagar" -FullAccess "Financeiro_Pagar"
New-SmbShare -Name "ContasReceber" -Path "C:\Financeiro\ContasReceber" -FullAccess "Financeiro_Receber"

Write-Output "Pastas criadas e permissões aplicadas."