<#
.SYNOPSIS
Cria uma GPO de wallpaper corporativo para a OU Financeiro.

.DESCRIPTION
Aplica o papel de parede definido em todas as máquinas da OU Financeiro.
#>

Import-Module GroupPolicy

# Criação da GPO
New-GPO -Name "Wallpaper_Corporativo" -Comment "GPO para aplicar papel de parede na OU Financeiro"

# Configura o wallpaper via registro
Set-GPRegistryValue -Name "Wallpaper_Corporativo" `
    -Key "HKCU\Control Panel\Desktop" `
    -ValueName "Wallpaper" -Type String -Value "\\server\share\wallpaper.jpg"

Write-Output "GPO de wallpaper criada e configurada."