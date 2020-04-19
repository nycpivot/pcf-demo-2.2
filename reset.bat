cf target -s pcf-demo
pause
@cls

cf unbind-service pcf-demos-web-v1 pcf-demo-app-autoscaler
cf unbind-service pcf-demos-web-v2 pcf-demo-app-autoscaler
cf unbind-service pcf-demos-web-v1 pcf-demo-redis
cf unbind-service pcf-demos-web-v2 pcf-demo-redis
cf unbind-service pcf-demos-web-v1 pcf-demo-sqlserver-products
cf unbind-service pcf-demos-web-v2 pcf-demo-sqlserver-products
pause
@cls

cf delete-service pcf-demo-app-autoscaler -f
cf delete-service pcf-demo-redis -f
cf delete-service pcf-demo-sqlserver-products -f
pause
@cls

cf delete pcf-demos-web-v1 -r -f
cf delete pcf-demos-web-v2 -r -f
pause
@cls