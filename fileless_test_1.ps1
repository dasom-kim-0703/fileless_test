# 1. 관리자 권한 확인
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    # 2. 관리자 권한이 없으면 관리자 권한으로 새 PowerShell 세션 실행
    Write-Host "관리자 권한이 필요합니다. 권한을 상승하여 스크립트를 재실행합니다..." -ForegroundColor Yellow

# 2. Ping 테스트 실행 (기본 4회 전송)
Write-Host "Ping 테스트를 시작합니다: 211.241.237.31" -ForegroundColor Cyan
ping 211.241.237.31

# (선택 사항) PowerShell 전용 명령어인 Test-Connection을 사용할 경우 위 ping 명령어 대신 아래 주석을 해제하여 사용하세요.
# Test-Connection -ComputerName 211.241.237.31 -Count 4

# 3. 계산기 프로그램 실행
Write-Host "계산기 프로그램을 실행합니다." -ForegroundColor Cyan
Start-Process -FilePath "C:\Windows\System32\calc.exe"
