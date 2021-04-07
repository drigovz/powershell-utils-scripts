<#
    .SYNOPSIS
    This script contains a serie of util functions to use in your routine
    
    .AUTHOR
   Rodrigo Vaz
#>

# clean recycle bin
function MyPs_EmptyRecycleBin {
    $Recycler = (New-Object -ComObject Shell.Application).NameSpace(0xa)
    $Recycler.items() | ForEach-Object { Remove-Item $_.path -force -recurse }

    Write-Host "Recycle bin cleaned!!!"  -ForegroundColor "Green"
}

# delete logs and temp files
function MyPs_DeleteLogs {
    # folders to delete temp files
    $Paths = "C:\Users\drigo\AppData\Local\Temp\", "C:\Windows\Temp\"

    # if you want set extensions of files to delete
    #$Extensions = "*", "*.temp", "*.tmp", "*.log", "*.cpuprofile", "*.txt"

    # days with to keep in log folder
    $nDays = 0

    $Files = Get-ChildItem $Paths -Include "*" -Force -Recurse | Where-Object { $_.LastWriteTime -le (Get-Date).AddDays(-$nDays) }
   
    foreach ($file in $Files) {        
        if ($NULL -ne $file) {
            Write-Host "delete: $file" -ForegroundColor "DarkRed"            
            Remove-Item $File.FullName | out-null
        }
    }

    Write-Host "Finished!" -ForegroundColor "Green"
}

# export functions
Export-ModuleMember -Function MyPs_EmptyRecycleBin
Export-ModuleMember -Function MyPs_DeleteLogs