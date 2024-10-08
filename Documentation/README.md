# Getting Started 

Elevate24 gives your team the power to grant limited privileges to certain users for a limited period of time through a simple self-service request. This allows users to access the admin permissions they need for their role while still maintaining security restrictions and avoiding the pitfalls of a completely open privileges system.

To get started, you can simply follow the guidance below:

## Deploy

First, Elevate24 needs to be deployed to your test devices before rolling it out to production. Simply follow the deployment instructions for your MDM solution. A few examples are provided below:

- [Install and deployment](/Documentation/Install%20and%20deployment.md)

After the application is installed, Elevate24 will launch in **basic** mode with default configurations. To test additional configurations, try the `basic-com.jigsaw24.Elevate24` profile and `com.apple.notificationsettings` for enabling notifications found in the folder below:

- [Template profiles](/Template%20Profiles/)

## Configure

Once you are satisfied that the templated profile is working as expected, you can adjust the options to suit your organisation’s needs. Alternatively, you can create a custom settings configuration using the iMazing Profile Editor application.

- [Elevate24 main configuration](/Documentation/Elevate24%20-%20Configuration%20Keys.md)

>[!NOTE]
>Some features are for Premium customers only. If you are interested in a trial license please [get in touch](https://www.jigsaw24.com/solutions/automation-and-tooling/elevate24)

## Reporting

Once you have a trial license and have configured Elevate24 to your liking, you can proceed to set up reporting as described below:

>[!NOTE]
>Reporting is a premium feature of Elevate24. If you have configured basic Elevate24 and it suits your organisation then great! If you need reporting [get in touch](https://www.jigsaw24.com/solutions/automation-and-tooling/elevate24) for a trial license. 


- [Elevate24 app reporting configuration](/Documentation/Elevate24%20Session%20Reporting%20-%20Configuration%20Keys.md)

## Monitoring (Preview)

Once you have a trial license or full premium license and have configured Elevate24 to your liking, you can proceed to set up monitoring as described below:

>[!IMPORTANT]
>Monitoring is currently in a preview phase and is offered on a customer-by-customer basis. For more detailed discussions, please contact Jigsaw24. [get in touch](https://www.jigsaw24.com/solutions/automation-and-tooling/elevate24)

1. Add Session Monitoring Key to Elevate24 Configuration.

   - **Type:** Boolean
   - **Default:** `false`
```xml
<key>EnableSessionMonitoring</key> 
<true/>
```

2. Add PPPC Profile for Elevate24SecurityExtension 
   - com.jigsaw24.Elevate24SecurityExtension
   - Full Disk Access
   - [Jamf PPPC Mobile Config](/Template%20Profiles/Jamf-Elevate%2024%20-%20Session%20Monitoring%20-%20PPPC.mobileconfig)

3. Add Config Profile for Elevate24 Security Extension starting with 
   - [Template Profile](/Template%20Profiles/monitoring-com.jigsaw24.Elevate24SecurityExtension.plist)


4. Install Elevate24 Security Extension pkg 

5. Change any configuration desired. 

   - [Elevate24 Security Extension Configuration](/Documentation/Elevate24%20Session%20Reporting%20-%20Configuration%20Keys.md)

   - [Elevate24 Security Extension Reporting](/Documentation/Elevate24%20Session%20Reporting%20-%20Reporting%20Configuration%20Keys.md)

6. View monitoring logs in your reporting solution of choice. 

>[!INFO]
>Some devices may require a restart before data is logged. 
