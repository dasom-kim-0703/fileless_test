# 1. Ping 테스트 실행 (기본 4회 전송)
Write-Host "Ping 테스트를 시작합니다: 211.241.237.31" -ForegroundColor Cyan
ping 211.241.237.31

# (선택 사항) PowerShell 전용 명령어인 Test-Connection을 사용할 경우 위 ping 명령어 대신 아래 주석을 해제하여 사용하세요.
# Test-Connection -ComputerName 211.241.237.31 -Count 4

# 2. 계산기 프로그램 실행
Write-Host "계산기 프로그램을 실행합니다." -ForegroundColor Cyan
Start-Process -FilePath "C:\Windows\System32\calc.exe"
