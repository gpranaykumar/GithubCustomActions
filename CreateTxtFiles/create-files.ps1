# PowerShell script to create two files
$file1 = "./Artifacts/file1.txt"
$file2 = "./Artifacts/file2.txt"

$content1 = "Content for the first file."
$content2 = "Content for the second file."

Set-Content -Path $file1 -Value $content1
Set-Content -Path $file2 -Value $content2

Write-Host "Files created."
