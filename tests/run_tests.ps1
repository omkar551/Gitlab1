# ==============================================================================
# DevPulse DevOps Automated Test Runner
# ==============================================================================

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   DevPulse Automated Test Suite & Criteria Verification" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

$testsPassed = 0
$totalTests = 0

function Assert-Test {
    param (
        [string]$Name,
        [scriptblock]$Condition
    )
    $global:totalTests++
    try {
        $result = & $Condition
        if ($result) {
            Write-Host "  [PASS] $Name" -ForegroundColor Green
            $global:testsPassed++
        } else {
            Write-Host "  [FAIL] $Name" -ForegroundColor Red
        }
    } catch {
        Write-Host "  [FAIL] $Name - Error: $_" -ForegroundColor Red
    }
}

$rootDir = Split-Path -Parent $PSScriptRoot
if (-not $rootDir) { $rootDir = Get-Location }

Write-Host "1. Testing Project Files & Structure..." -ForegroundColor Yellow
Assert-Test "Website Entry Point (index.html) exists" { Test-Path "$rootDir\index.html" }
Assert-Test "Styling Engine (styles.css) exists" { Test-Path "$rootDir\styles.css" }
Assert-Test "Application Logic (app.js) exists" { Test-Path "$rootDir\app.js" }

Write-Host "`n2. Testing DevOps Tools Integration..." -ForegroundColor Yellow
Assert-Test "Docker Container Configuration (Dockerfile) exists" { Test-Path "$rootDir\Dockerfile" }
Assert-Test "Docker Compose (docker-compose.yml) exists" { Test-Path "$rootDir\docker-compose.yml" }
Assert-Test "Nginx Web Server Config (nginx.conf) exists" { Test-Path "$rootDir\nginx.conf" }
Assert-Test "GitHub Actions CI/CD Workflow exists" { Test-Path "$rootDir\.github\workflows\ci.yml" }
Assert-Test "Jenkins Automation Pipeline (Jenkinsfile) exists" { Test-Path "$rootDir\Jenkinsfile" }

Write-Host "`n3. Testing Content & Health Verification..." -ForegroundColor Yellow
Assert-Test "Index HTML includes pipeline visualizer" {
    $content = Get-Content "$rootDir\index.html" -Raw
    $content.Contains("pipelineFlow") -and $content.Contains("DevPulse")
}
Assert-Test "Dockerfile contains HEALTHCHECK instruction" {
    $docker = Get-Content "$rootDir\Dockerfile" -Raw
    $docker.Contains("HEALTHCHECK")
}
Assert-Test "GitHub Actions Workflow defines all automated jobs" {
    $ci = Get-Content "$rootDir\.github\workflows\ci.yml" -Raw
    $ci.Contains("lint-and-validate") -and $ci.Contains("automated-testing") -and $ci.Contains("docker-build")
}

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host "   Test Results: $testsPassed / $totalTests Passed" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan
