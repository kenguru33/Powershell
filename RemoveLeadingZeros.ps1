$path = "c:\users\bernt\Testmappe\"
$recursive = $true

if ($recursive) {
    $fileList = Get-ChildItem $path -File -Recurse
} else {
    $fileList = Get-ChildItem $path -File 
}

foreach ($file in $fileList) 
{
    $newname = $file.Name.TrimStart("0")
    Rename-Item $file.FullName $newname 
}


    



