Write-Host "DELETE BIN AND OBJ FOLDERS IN CURRENT FOLDER HEIRARCHY" -foregroundcolor "DarkGreen"
Write-Host "This is what gets deleted if you proceed." -foregroundcolor "DarkGreen"
Write-Host ""
Get-ChildItem .\ -include bin,obj -Recurse | foreach($_) { Remove-Item $_.fullname -Force -Recurse -WhatIf }

Write-Host ""
Write-Host ""
$proceed = Read-Host "Proceed with delete (Y/N)?"

if ($proceed -match "[yY]") {
  Get-ChildItem .\ -include bin,obj -Recurse | foreach($_) { Remove-Item $_.fullname -Force -Recurse }
  Write-Host "Files deleted" -foregroundcolor "Green"
  Write-Host ""
  Exit
}

Write-Host ""
Write-Host "Files NOT deleted" -foregroundcolor "DarkRed"
Write-Host ""
