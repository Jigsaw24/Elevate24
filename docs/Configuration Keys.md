# Configuration Keys for Elevate24

## License Configuration 
### License Keys
- **Availability:** Premium
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
- **Availability:** Premium
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
- **Availability:** Premium
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
- **Availability:** Basic & Premium
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
- **Availability:** Basic & Premium
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
- **Availability:** Premium
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
- **Availability:** Basic & Premium
- **Type:** boolean
- **Default:** `false` 

> [!NOTE]
> Enables the option for the application to display a choice of `times`. Configure `Sessiontime` to customise default options. 

```xml
<key>Enabletimelist</key>
<true/>
```
---
### Session Time
- **Availability:** Basic & Premium
- **Type:** String
- **Default:** `3600` seconds

> [!NOTE]
> Change the length of time the user will be elevated if `Enabletimelist` is `false`. These times should be listed in seconds.

```xml
<key>Sessiontime</key>
<string>3600</string>
```
---
### times
- **Availability:** Basic & Premium
- **Type:** String
- **Default:** `1800` `3600` `7200` seconds

> [!NOTE]
> Change the choice of times available if `Enabletimelist` is `True`.

```xml
<key>Sessiontime</key>
<string>3600</string>
```
---
### reasons
- **Availability:** Basic & Premium
- **Type:** String
- **Default:** `Install Application` `enter here` 

> [!NOTE]
> Changes the reasons the user selectes within Elevate24 before they are allowed to Elevate. 

```xml
<key>reasons</key>
<array>
<string>Install Application</string>
<string>Customise Preferences</string>
</array>
```
---
### Enable Reason
- **Availability:** Basic & Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Will replace `reasons` with a free text entry box. 

```xml
<key>enableReason</key>
<true/>
```



---



## Security Settings
### Standard at Load
- **Availability:** Basic & Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Will remove admin rights when the application first launches.

```xml
<key>standardatLoad</key>
<true/>
```
---
### Demote all admin
- **Availability:** Basic & Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Enables all admin users being demoted to standard users when the current elevation period ends.

> [!WARNING]
> This will demote all administrator accounts on your device. Please use `demoteExclusions` to set exclusions for any orgnisational administrator accounts you may have.

```xml
<key>demoteAllAdmin</key>
<true/>
```
---

### Demote Exclusions
- **Availability:** Basic & Premium
- **Type:** string

> [!NOTE]
> Will exclude accounts from being demoted when the application quits or ends the elevated session. This is strongly recommended if the business uses a standard administrator account across all devices. 

```xml
<key>demoteExclusions</key>
<array>
<string>CorpAdmin</string>
<string>ACMEAdmin</string>
</array>
```
---

### demoteAllAdminQuit
- **Availability:** Basic & Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Will demote all admin accounts from admin when the application quits or the laptop is restarted. 

```xml
<key>demoteAllAdminQuit</key>
<true/>
```
---
### End Terminal Sessions
- **Availability:** Basic & Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Add More Info! 

```xml
<key>killterminalsessions</key>
<true/>
```



---




## Secondary Account Configuration
### Temporary Secondary Account
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Will create a temporary account instead of Elevating the primary account. A temporary password will also be supplied upon elevation. 

```xml
<key>userElevateAdmin</key>
<true/>
```
---
### Use current username as admin
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> If `userElevateAdmin` Key is set to `true` and this key is also set as `true`, the temporary account will use the current logged in users username as part of the account naming. 
For example, Joe.Bloggs-adm

```xml
<key>useCurrentUserAsAdmin</key>
<true/>
```
---

### Use current username as admin
- **Availability:** Premium
- **Type:** string
- **Default:** `false` 

> [!NOTE]
> If `useCurrentUserAdmin` is set to `false`, this key allows the ability to create a temporary admin account with a standard name. 

> [!TIP]
> This is more useful if you require setting automatic permission changes. However, please do so at your own risk.

```xml
<key>adminUserName</key>
<string>adminName</string>
```
---

### Complex Password for Secondary Account
- **Availability:** Premium
- **Type:** string
- **Default:** `false` 

> [!NOTE]
> Enables the use of a custom complex password when using a Secondary Account. `userElevateAdmin` must be set to `true`. 

> [!IMPORTANT]
>Configuring the password requires the amount of each character. For example, `PasswordUppercase` with a value of `5` would create `5` Uppercase characters. 

```xml
<key>ComplexPassword</key>
<true/>
```
```xml
<key>PasswordUppercase</key>
<string>5</string>
```
```xml
<key>PasswordLowercase</key>
<string>5</string>
```
```xml
<key>PasswordNumbers</key>
<string>5</string>
```
```xml
<key>PasswordSymbols</key>
<string>5</string>
```
---
### Use current username as admin
- **Availability:** Premium
- **Type:** integer
- **Default:** `0` 

> [!NOTE]
> Set the number of seconds after elevation or last showing the password that the password will be shown. (Max 45 seconds)

```xml
<key>showAdminPasswordGrace</key>
<integer>30</integer>
```
---