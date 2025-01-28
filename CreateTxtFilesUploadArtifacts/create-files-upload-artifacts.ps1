# Define file paths
$artifactDir = "Artifacts"
$file1 = "$artifactDir/file1.txt"
$file2 = "$artifactDir/file2.txt"

# Content to write to the text files
$content1 = "This is the content of the first file created by Action B."
$content2 = "This is the content of the second file created by Action B."

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

# Upload files as artifacts using actions/upload-artifact
$artifactName = "generated-files"

# Upload the files
$uploadArtifactCmd = "echo '::set-output name=artifactName::$artifactName'"
Invoke-Expression $uploadArtifactCmd

# Use GitHub's upload-artifact action to upload the files
$uploadFilesCmd = "echo '::add-path::$file1'"
Invoke-Expression $uploadFilesCmd

$uploadFilesCmd = "echo '::add-path::$file2'"
Invoke-Expression $uploadFilesCmd

Write-Host "Files uploaded successfully as artifacts."
