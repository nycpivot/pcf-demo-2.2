cf target -s pcf-demo
pause

cf map-route pcf-demos-web-v2 apps.pcfone.io -n pcf-demos-web-v1
cf routes
pause

cf unmap-route pcf-demos-web-v1 apps.pcfone.io -n pcf-demos-web-v1
cf routes
pause

cf unmap-route pcf-demos-web-v2 apps.pcfone.io -n pcf-demos-web-v2
cf routes
pause