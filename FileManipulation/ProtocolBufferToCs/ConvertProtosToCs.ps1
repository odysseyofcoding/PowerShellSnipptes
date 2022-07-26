#In this case the ProtoFiles are in the same location where the script is located
$relativePathToProto = "./"
$fileExtension = "*.proto"

Get-ChildItem $relativePathToProto -recurse -Force -Filter $fileExtension | `
Foreach-Object{
     $currentFileName = $_.BaseName + $fileExtension
    ./bin/protoc.exe --csharp_out=./converted $currentFileName
}
