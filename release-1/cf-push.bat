cf target -s pcf-demo
pause
@cls

cf delete pcf-demos-web-v1 -r -f
pause
@cls

cf push
pause
@cls