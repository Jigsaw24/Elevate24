# Reporting Configuration Keys for Elevate24

For Elevate24 Premium customers, you can send data from the Elevate24 Endpoint Security to a destination of your choice, while also disabling the logging of data to Jigsaw24. 

> [!IMPORTANT]
> This is all done from the app, on device and does not go through or visable by Jigsaw24 if `UploadEventsToJigsaw` is set to `false`

> [!INFO]
> If you use Microsoft Sentinel or SIEM, this data is uploaded seperatly to Elevate24 Application.


### Max Data Upload Size
- **Availability:** Premium
- **Type:** integer
- **Default:** 1000000

> [!NOTE]
> Max size of single HTTP request uploading data. (Uncompressed size in bytes default size is 1,000,000 bytes)

```xml
<key>MaxDataUploadSize</key>
<integer>1000000</integer>
```


## Microsoft Sentinel

- **Availability:** Premium
- **Type:** String

> [!NOTE]
> To enable sending of Elevate24 Security logs to Microsoft Sentinel. 

> [!TIP]
> [Microsoft Documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/tutorial-logs-ingestion-portal)

```xml
	<key>SentinelClientId</key>
	<string>dfghfdgh</string>

	<key>SentinelClientSecret</key>
	<string>dfhdfgh</string>

	<key>SentinelTennantId</key>
	<string>xdvbfdh</string>

	<key>SentinelUploadURL</key>
	<string>dfghdfgh</string>
```

## SIEM

- **Availability:** Premium
- **Type:** String

> [!NOTE]
> By default events are uploaded in JSON format as an array of events. Some systems require events to be seperated with a new line.

```xml
	<key>siemNewLineSeperated</key>
	<true/>
```
> [!NOTE]
> Headers to be included in the HTTP request. To enable sending data to a third=party SIEM. 

```xml
	<key>siemUploadHeaders</key>
	<array>
		<dict>
			<key>Header</key>
			<string>dfghgfh</string>
			<key>Value</key>
			<string>dfghgfh</string>
		</dict>
	</array>
```