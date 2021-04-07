# clean recycle bin
function MyPs_EmptyRecycleBin {
    $Recycler = (New-Object -ComObject Shell.Application).NameSpace(0xa)
    $Recycler.items() | ForEach-Object { Remove-Item $_.path -force -recurse }

    Write-Host "Recycle bin cleaned!!!"
}

# export functions
Export-ModuleMember -Function MyPs_EmptyRecycleBin