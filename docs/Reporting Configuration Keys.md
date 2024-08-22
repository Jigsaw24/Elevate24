# Reporting Configuration Keys for Elevate24

For Elevate24 Premium customers, you can send data from the Elevate24 application to a destination of your choice, while also disabling the logging of data to Jigsaw24.

> [!IMPORTANT]
> This is all done from the app, on device and does not go through or visable by Jigsaw24. 

## SIEM 

[!NOTE] add information here

### License Keys
- **Availability:** Premium
- **Type:** String

> [!NOTE]
> To enable sending data to a SIEM of your chouce to receive Elevate24 Application usage logging, provide a full SIEM configuration within the keys below.

```xml
<key>siemUrl</key>
<string>”siem URL”</string>
```
```xml
<key>siemAuthHeader</key>
<string>”Auth Header”</string>
```
```xml
<key>siemAuthToken</key>
<string>”Token”</string>
```

---

## Microsoft Sentinel 

[!NOTE] add information here

### License Keys
- **Availability:** Premium
- **Type:** String

> [!NOTE]
> To enable sending data to Microsoft Sentinel included the entire example and replace the string text with the information relevant to your organisation. 

> [!TIP]
> [Microsoft Documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/tutorial-logs-ingestion-portal)

```xml
<key>microsoftsentinel</key> 
<array> 
<dict>
<key>SentinelClientId</key> 
<string>ClientID</string> 
<key>SentinelTennantId</key> 
<string>TennantID</string> 
<key>SentinelClientsecret</key> 
<string>Secret</string> 
<key>SentinelUploadURL</key> 
<string>URL</string> 
</dict> 
</array>
```

### Disable sending data to Jigsaw24
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> To disable sending the reporting data to Jigsaw24 include this key with the `true` flag. 

> [!IMPORTANT]
> If you are an Elevate24 Basic customer, no data is sent off device. 

```xml
<key> DisableDefaultLog</key>
<true/>
```