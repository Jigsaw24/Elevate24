# Configuration Keys for Elevate24

## License Configuration 
### License Keys
- **Availability:** `Premium`
- **Type:** String

> [!NOTE]
> These keys are required to get access to premium functionality. The license is found with the Elevate24 Portal via Jigsaw24. 

```xml
<key>LicenseKey</key>
<string>123456789</string>
```
```xml
<key>LicenseAPIKey</key>
<string>123456789</string>
```





---






## Branding
### Icon Path 
- **Availability:** `Premium`
- **Type:** String
- **Default:** `Elevate24 Icon`
 
> [!NOTE]
> Change the standard Elevate24 icon in the application. 
```xml
<key>iconPath</key>
<string>/tmp/icon.png</string>
```
---
### Hide Logo
- **Availability:** `Premium`
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Hide the "Powered by Jigsaw24 Logo" in the bottom right handside of the application.
```xml
<key>iconPath</key>
<true/>
```
---
### Heading
- **Availability:** `Basic` `Premium`
- **Type:** String
- **Default:** `Elevate24`

> [!NOTE]
>Change the standard header in the application. Always displays in bold. 
```xml
<key>heading</key>
<string>Elevate24</string>
```
---
### Message
- **Availability:** `Basic` `Premium`
- **Type:** String
- **Default:** `Elevate24`

> [!NOTE]
>Change the standard messaging in the application. Use '\\n' for spacing lines
```xml
<key>message</key>
<string>Use of admin accounts is recorded for security compliance.
\n\n Select why you require admin privileges\n and select how long for</string>
```
---
### Main Button
- **Availability:** `Premium`
- **Type:** String
- **Default:** `Elevate`

> [!NOTE]
>Change the standard button text in the application. 

```xml
<key>mainbutton</key>
<string>Elevate</string>
```




---





## Elevated Session Customisation

### Enable Time List
- **Availability:** `Basic` `Premium`
- **Type:** boolean
- **Default:** `false` 

Enables the option for the application to display a choice of `times`. Configure `Sessiontime` to customise default options. 

```xml
<key>Enabletimelist</key>
<true/>
```

### Session Time
- **Availability:** `Basic` `Premium`
- **Type:** String
- **Default:** `3600` seconds

Change the length of time the user will be elevated if `Enabletimelist` is `false`. These times should be listed in seconds.

```xml
<key>Sessiontime</key>
<string>3600</string>
```

### times
- **Availability:** `Basic` `Premium`
- **Type:** String
- **Default:** `1800` `3600` `7200` seconds

Change the choice of times available if `Enabletimelist` is `True`.

```xml
<key>Sessiontime</key>
<string>3600</string>
```

### reasons
- **Availability:** `Basic` `Premium`
- **Type:** String
- **Default:** `Install Application` `enter here` 

Changes the reasons the user selectes within Elevate24 before they are allowed to Elevate. 

```xml
<key>reasons</key>
<array>
<string>Install Application</string>
<string>Customise Preferences</string>
</array>
```

### Enable Reason
- **Availability:** `Basic` `Premium`
- **Type:** Boolean
- **Default:** `false` 

Will replace `reasons` with a free text entry box. 

```xml
<key>enableReason</key>
<true/>
```



---



## Security Settings
### Standard at Load
- **Availability:** `Basic` `Premium`
- **Type:** Boolean
- **Default:** `false` 

Will remove admin rights when the application first launches.

```xml
<key>standardatLoad</key>
<true/>
```

### Demote all admin
- **Availability:** `Basic` `Premium`
- **Type:** Boolean
- **Default:** `false` 

Enables all admin users being demoted to standard users when the current elevation period ends.

```xml
<key>demoteAllAdmin</key>
<true/>
```

