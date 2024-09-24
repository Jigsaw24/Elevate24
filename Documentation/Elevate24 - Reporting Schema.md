# Reporting Schema for Elevate24

The below reporting schema is to be used on customer owned SIEM solutions. This schema is for the Elevate24 Application and does not include the monitoring capabilities. 

> [!NOTE]
> Elevate24 will log two entries, one at the beginning of the session when the user has elevated and another at the end of the session. The main differences will be the output of `Action` and `Trigger`.

## Schema

```json
{
 "User" : String,
 "ComputerSerial" : String,
 "DateTimeRequested" : String,
 "LengthOfElevation" : String,
 "Reason" : String,
 "ReasonText" : String,
 "TimeGenerated" : String,
 "Action" : String,
 "Trigger" : String,
 "SessionId" : String
}
```
## Information


- `User` = Logged in username from the device that has elevated or demoted. 
- `ComputerSerial` = The serial number of the device that has elevated or demoted. 
- `DateTimeRequested` = Date and Time the user has elevated or demoted. 
- `LengthOfElevation` = The time selected by the user or time enforced when elevating.
- `Reason` = The reason chosen by the user when elevating. 
- `ReasonText` = The output of the free text entry (if configured) when elevating. 
- `TimeGenerated` = Date and Time the user has elevated or demoted. This is included alongside `DateTimeRequested` as it is a requested entry by Microsoft Sentinel. 
- `Action` = Will include "Elevate" or "Demote" depending if its a log entry for the beginning or end of the session. 
- `Trigger` = Will output one of the below depending on the trigger of elevation or demoting. 
  - "User Request" - User clicked elevate button or revoke button.
  - "Session Timeout" - Application reached the end of its timer.
  - "App Start" - Demoted on application load. 
  - "Background Process" - The background process has detected an admin user with no active Elevate24 Session.
  - "App Quit" - Elevate24 app has been quit.
- `SessionId` = Each elevated session has an ID. This will output that ID for that specific elevated session. 

