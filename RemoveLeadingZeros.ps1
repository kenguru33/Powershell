# change path as required. eg: c:\Myfiles\
$path = "change me"
# set to true for recursive traversing.
$recursive = $false

if ($recursive) {
    $fileList = Get-ChildItem $path -File -Recurse
} else {
    $fileList = Get-ChildItem $path -File 
}

foreach ($file in $fileList) 
{
    $newName = $file.Name.TrimStart("0")
    Rename-Item $file.FullName $newName 
}


    



