$repo = $env:REPO_NAME
Write-Host "The repository  is: $repo"
$repoName = ($repo.Split('/'))[1]
Write-Host "The repository Name  is: $repoName"
