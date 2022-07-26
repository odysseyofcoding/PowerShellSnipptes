$parnetFolderLocation = #!#"D:\\..\\..\\"
Get-ChildItem $parentFolderLocation -recurse -Filter #!#*.fileextension | `
Foreach-Object{
    #Get Text 
    $contentOfFile = Get-Content $_.FullName
    
    #Print manipulated file name
    $filename = $_.FullName -replace $parentFolderLocation, ""
    Write-Host($filename)
    
    #Set Text to be added on top of file
    $newline = 'Hello World' #if new line is needed # + " `n"
    
    #Write
    Set-Content $_.FullName -value $newline, $contentOfFile
    
    #Add lines at the end
    ##$endline = "`n footer"
    ##Add-Content $_.FullName $endline
}
