# Configuration Keys for Elevate24

The Keys included here are for the main Elevate24 Application. If you need to configure the Endpoint Security Extension please visit [HERE](/docs/Endpoint%20Security%20Configuration%20Keys.md)

- **Preference Domain:** com.jigsaw24.Elevate24

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

## Elevate24 Design
### NewUI
- **Availability:** Basic & Premium.
- **Version:** 2.2.0+
- **Type:** Boolean
- **Default:** `false` 
 
> [!NOTE]
> Change Elevate24 to show to the new UI. The new UI will be default in a later version of Elevate24. 

```xml
<key>newUI</key>
<true/>
```
---


## Branding
### Icon Path 
- **Availability:** Premium
- **Type:** String
- **Default:** Elevate24 icon
 
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
<key>HideLogo</key>
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
### Sub Heading
- **Availability:** Basic & Premium
- **Version:** 2.2.0+
- **Type:** String

> [!NOTE]
>Change the standard text "Privilege Access Management" under the Elevate24 header. 
```xml
<key>subheading</key>
<string>Privilege Access Management</string>
```
---
### Message
- **Availability:** Basic & Premium
- **Type:** String

> [!NOTE]
>Change the standard messaging in the application. 
```xml
<key>message</key>
<string>Use of admin accounts is recorded for security compliance.</string>
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
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Enables the option for the application to display a choice of `times`. Configure `Sessiontime` to customise default options. 

```xml
<key>Enabletimelist</key>
<true/>
```
---
### Enforced session Time
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
### Choice of times
- **Availability:** Basic & Premium
- **Type:** array
- **Default:** `1800` `3600` `7200` seconds

> [!NOTE]
> Change the choice of times available if `Enabletimelist` is `True`.

```xml
<key>times</key>
<array>
<string>1800</string>
<string>3600</string>
<string>7200</string>
</array>
```
---
### Choice of reasons
- **Availability:** Basic & Premium
- **Type:** String

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
### Extend Session
- **Availability:** Premium
- **Version:** 2.2.0+
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Will disable the ability to extend the session.

```xml
<key>blockExtend</key>
<true/>
```

---
### Set Session Expiry Notification
- **Availability:** Premium
- **Version:** 2.2.0+
- **Type:** integer
- **Default:** `0` 

> [!NOTE]
> Set the number of minutes before the application notifies the user that the session is expiring. 

```xml
<key>sessionExpiryReminder</key>
<integer>2</integer>
```
---


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
- **Type:** String

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

### Demote account on quit / logout
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
> Elevate24 will attempt to kill open terminal session logged in as root. 

```xml
<key>killterminalsessions</key>
<true/>
```

---
### Enable Apple Authentication
- **Availability:** Basic & Premium (v2.1.3+ for basic)
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Prompts the user for their local Apple credentials or TouchID (if enabled on device) before allowing elevation. 

```xml
<key>enableAppleAuth</key>
<true/>
```

---
### Enable OTP
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false` 

> [!NOTE]
> Enables the use of authenticator applications such as Google Auth or Microsoft Auth, prompting for a valid session token 

```xml
<key>GoogleAuth</key>
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
- **Type:** String
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
- **Type:** String
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
<integer>5</integer>
```
```xml
<key>PasswordLowercase</key>
<integer>5</integer>
```
```xml
<key>PasswordNumbers</key>
<integer>5</integer>
```
```xml
<key>PasswordSymbols</key>
<integer>5</integer>
```
---
### Show Admin Password Grace
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
