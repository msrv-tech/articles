# Запускать в PowerShell там, где уже выполнен: gh auth login
# Пример: cd D:\PROG\articles; .\publish-github.ps1
# Имя репозитория на GitHub можно передать: .\publish-github.ps1 -RepoName my-articles

param(
    [string] $RepoName = "articles",
    [string] $Description = "Статьи и медиа"
)

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

gh auth status | Out-Host
if ($LASTEXITCODE -ne 0) {
    Write-Error "Сначала выполни: gh auth login"
}

if (git remote get-url origin 2>$null) {
    Write-Host "Remote origin уже есть:" (git remote get-url origin)
    Write-Host "Пушу в существующий origin..."
    git push -u origin main
    exit $LASTEXITCODE
}

gh repo create $RepoName --public --source=. --remote=origin --push --description $Description
if ($LASTEXITCODE -ne 0) {
    Write-Error "gh repo create завершился с ошибкой (имя занято? укажи другое: -RepoName ...)"
}

Write-Host "Готово. Репозиторий: https://github.com/$(gh api user -q .login)/$RepoName"
