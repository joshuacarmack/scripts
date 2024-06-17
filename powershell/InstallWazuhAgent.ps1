Invoke-WebRequest -Uri https://packages.wazuh.com/4.x/windows/wazuh-agent-4.7.3-1.msi -OutFile ${env.tmp}\wazuh-agent; msiexec.exe /i ${env.tmp}\wazuh-agent /q WAZUH_MANAGER='jclab.xyz' WAZUH_REGISTRATION_SERVER='jclab.xyz' 
Get-Service; Start-Sleep -Seconds 85; Get-Service
net start wazuhsvc