# clean recycle bin
function My_EmptyRecycleBin {
    $Recycler = (New-Object -ComObject Shell.Application).NameSpace(0xa)
    $Recycler.items() | ForEach-Object { Remove-Item $_.path -force -recurse }

    Write-Host "Recycle bin cleaned!!!"
}

Export-ModuleMember -Function My_EmptyRecycleBin