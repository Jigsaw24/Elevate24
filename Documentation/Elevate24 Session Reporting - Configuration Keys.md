# Configuration Keys for Elevate24 Session Reporting
The Keys included here are for the main Elevate24 Endpoint Security Extension. If you need to configure the Application please visit [HERE](/Documentation/Elevate24%20-%20Configuration%20Keys.md)

- **Preference Domain:** com.jigsaw24.Elevate24SecurityExtension

## General Configuration
### Enable Recording
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Set to `true` to enable recording of events. 

```xml
<key>RecordingEnabled</key>
<true/>
```
---
### Disable all functionality
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Stops all blocking/logging operations. Effectively a switch to disable this tool. 

```xml
<key>DisableAll</key>
<true/>
```
---
### Default Filter Rules
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Deploys default rules to discard some events which can be considered noise.

```xml
<key>DefaultFilterRules</key>
<true/>
```
---
### Self Protection Auth Rules
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Deploys authorisation rules to attempt to stop the user making changes to Elevate24 Monitoring.

```xml
<key>SelfProtectionRules</key>
<true/>
```
---
### Local Retention
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Enables the local retention of Events after they have been uploaded to Jigsaw24/SIEM.

```xml
<key>EnableArchive</key>
<true/>
```
---
### Maximum age of retained events
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Deploys authorisation rules to attempt to stop the user making changes to Elevate24 Monitoring.

```xml
<key>MaxArchiveAge</key>
<integer>6</integer>
```
---
### Allow Upload Data on Hotspot connection
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Upload Events when connected to iPhone personal hotspot.

```xml
<key>UploadOnHotspot</key>
<true/>
```



---




## Event Types
### Log all event types
- **Availability:** Premium
- **Type:** Boolean
- **Default:** `false`

> [!NOTE]
> Set all event types to be logged.

> [!WARNING]
> This could be a lot of data. Please use carefully. 

```xml
<key>logAllEventTypes</key>
<true/>
```
---
### Event Types
- **Availability:** Premium
- **Type:** Array

> [!NOTE]
> Define which event types to log.


```xml
<key>EventsToLog</key>
	<array>
		<dict>
			<key>eventType</key>
			<string>File:Write</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>File:Unlink</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>File:Clone</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>File:CopyFile</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>File:Create</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>File:Rename</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>User:Create</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>User:Delete</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>Profile:Add</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>Profile:Remove</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>LaunchItem:Add</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>LaunchItem:Remove</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>Sudo</string>
		</dict>
		<dict>
			<key>eventType</key>
			<string>Process:Exec</string>
		</dict>
	</array>
```

---

### Filter Rules
- **Availability:** Premium
- **Type:** Array

> [!NOTE]
> Define which event types to log.


```xml
<key>filterRules</key>
	<array>
		<dict>
			<key>sadgsdfgfdg</key>
			<string>sdfgsdfgsfdg</string>
            	</dict>
	</array>
```

---

## Authorisation Rules

### File Operation Rules
- **Availability:** Premium
- **Type:** Array

---

### Execute Process Rules
- **Availability:** Premium
- **Type:** Array