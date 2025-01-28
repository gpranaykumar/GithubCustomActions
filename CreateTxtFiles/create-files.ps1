# Define file paths
$artifactDir = "Artifacts"
$file1 = "$artifactDir/file1.txt"
$file2 = "$artifactDir/file2.txt"

# Content to write to the text files
$content1 = "Content for the first file."
$content2 = "Content for the second file."

# Create the Artifacts directory if it doesn't exist
if (-not (Test-Path -Path $artifactDir)) {
    New-Item -Path $artifactDir -ItemType Directory
    Write-Host "Created directory: $artifactDir"
}

# Create the first file
Set-Content -Path $file1 -Value $content1
Write-Host "File '$file1' created with content."

# Create the second file
Set-Content -Path $file2 -Value $content2
Write-Host "File '$file2' created with content."

$relativePath = ".\Artifacts"  # example relative path
$resolvedPath = Resolve-Path -Path $relativePath
Write-Host "Resolved path ( .\Artifacts ): $resolvedPath"

$relativePath = "Artifacts"  # example relative path
$resolvedPath = Resolve-Path -Path $relativePath
Write-Host "Resolved path ( Artifacts ): $resolvedPath"

