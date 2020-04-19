for($counter = 1; $counter -le 7500; $counter++) {
    Write-Output "https://pcf-demos-web-v1.apps.pcfone.io/scale/scale?id=" + $counter
    Start-Job -ScriptBlock { Invoke-WebRequest -Uri "https://pcf-demos-web-v1.apps.pcfone.io/scale/scale?id=" + $counter }
}