# FAQ for Elevate24

## Application 

**Q** – What type of personal identification data is collected by Jigsaw24?

**A** – The agent will collect basic user identification information from the device, this includes username and serial number. 

---

**Q** - Does Elevate24 collect session logs for reporting what actions the user took whilst Elevated? 

**A** – Yes in Elevate24 `V2.1.0+` Elevate24 Premium logs File Changes, Processes information, commands ran in terminal, applications installed/changed/removed and profiles installed/changed/removed.


---


**Q** - Can I disabled collection of session logs?

**A** – Yes. See - [Reporting Configuration](./docs/Reporting%20Configuration%20Keys.md)

---

**Q** - Does the temporary account password change on de-elevation to stop users logging into the account?

**A** – The password is changed on de-elevation and the account is also disabled to prevent users logging into this account. 

---

**Q** – What data is collected by Jigsaw24 if I turn off default reporting and use my own SIEM?

**A** – Active license and number of elevations for license purposes only. No user or device identifiable data is collected. 

---

**Q** – If data is sent to Jigsaw24, how long does it take for the Elevation data to appear in the Elevate24 Dashboard?

**A** – An elevation can take up to 5 minutes to appear in the console. 

---

**Q** – What macOS versions is the Elevate24 Application compatible with?

**A** – Supported and tested against N-3. Anything older is untested and unsupported but may still work or have limited functionality. 

---


**Q** – How does Elevate24 Application get updated?    

**A** – For Elevate24 customers, Updates are released on this GitHub Page and within the Portal (Premium Customers Only). 

---

## Security - `Premium`

**Q** – Has application security testing has Jigsaw24 completed?

**A** – Yes. This can be provided upon request.

---

**Q** – How is my company data stored? 

**A** – Data is stored in compliance with GDPR and data protection best practice. Data is encrypted at rest and in transit.

---

**Q** – Is data in transit from device to ELA encrypted?  

**A** – Data is sent via HTTPS all our encryption keys are managed by automated cycling processes to ensure they remain compliant.

---

**Q** – Is my data shared with Third Party sources?  

**A** – No. No data is shared beyond Jigsaw24. 

---

**Q** – How long is my company data stored for?

**A** – For Elevate24 premium customers session logs (actions users took) are stored for 30 days and other data (time of elevation, reason etc..) is stored for 365 days. 

---

**Q** – Who has visibility/access of/to my data?     

**A** – The dashboards are available to key staff in Jigsaw24 who need them for support or management purposes. The raw data is only available to the development team who have strict access and audit processes in place.

---

**Q** – Is the data you capture backed up?     

**A** – All data is backed up and available to restore by Jigsaw24.

---

**Q** – How is session log data collected?      

**A** – Data is collected by the Elevate24 agent for `premium` customers.


---