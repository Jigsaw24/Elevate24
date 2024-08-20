# Configuration Keys for Elevate24

## License Configuration

### License Keys
(String, `Premium`)

These keys are required to get access to premium functionality. The license is found with the Elevate24 Portal via Jigsaw24. 

```xml
<key>LicenseKey</key>
<string>123456789</string>
```
```xml
<key>LicenseAPIKey</key>
<string>123456789</string>
```

---

## `Branding`
### Icon Path 
- **Availability:** `Premium`
- **Type:** String
- **default:** `Elevate24 Icon`
 
Change the standard Elevate24 icon in the application. 
```xml
<key>iconPath</key>
<string>/tmp/icon.png</string>
```
### Hide Logo
- **Availability:** `Premium`
- **Type:** Boolean
- **default:** `false`

Hide the "Powered by Jigsaw24 Logo" in the bottom right handside of the application.
```xml
<key>iconPath</key>
<true/>
```
### Heading
- **Availability:** `Basic` `Premium`
- **Type:** String
- **default:** `Elevate24`

Change the standard header in the application. Always displays in bold. 
```xml
<key>heading</key>
<string>Elevate24</string>
```
### Message
- **Availability:** `Basic` `Premium`
- **Type:** String
- **default:** `Elevate24`

Change the standard messaging in the application. Use '\\n' for spacing lines
```xml
<key>message</key>
<string>Use of admin accounts is recorded for security compliance.
\n\n Select why you require admin privileges\n and select how long for</string>
```
### Main Button
- **Availability:** `Premium`
- **Type:** String
- **default:** `Elevate`

Change the standard button text in the application. 

```xml
<key>mainbutton</key>
<string>Elevate</string>
```

---


## `Elevated Session Customisation`

### Session Time
- **Availability:** `Basic` `Premium`
- **Type:** String
- **default:** `3600` seconds

Change the length of time the user will be elevated if `Enabletimelist` is `false`. These times should be listed in seconds.

```xml
<key>Sessiontime</key>
<string>3600</string>
```

### times
- **Availability:** `Basic` `Premium`
- **Type:** String
- **default:** `1800` `3600` `7200` seconds

Change the choice of times available if `Enabletimelist` is `True`.

```xml
<key>Sessiontime</key>
<string>3600</string>
```
