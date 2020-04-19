cf target -s pcf-demo
pause
@cls

cf create-service app-autoscaler standard pcf-demo-app-autoscaler
cf create-service p-redis shared-vm pcf-demo-redis

cf cups pcf-demo-sqlserver-products -p '{\"uid\":\"nycpivot\",\"pw\":\"P@$$w0rd#01\",\"uri\":\"sqlserver://saffron.arvixe.com:1433;databaseName=PivotalProducts\"}'
pause
@cls

cf marketplace -s p-redis
pause