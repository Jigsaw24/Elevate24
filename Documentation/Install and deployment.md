# Install and Deployment

Elevate24 install is a .pkg file. Simply run the installer or deploy using your MDM of choice. 


---

### Jamf Pro

1. Upload the Elevate24 installer pkg file to Jamf Pro
2. Upload a [Template profile](/Template%20Profiles/)
3. Scope the configuration profile to the computers
4. Add the pkg too a Jamf Policy and configure. 

>[!NOTE]
>More in-depth instructions for Jamf Pro can be found [here](https://learn.jamf.com/en-US/)

---

### Kandji

1. Create a Auto App application library item
2. Select Elevate24 and configure options
3. Upload a [Template profile](/Template%20Profiles/)
4. Scope the configuration profile and Auto App to the blueprint / Assignment Map.

>[!NOTE]
> More in-depth instructions for Kandji can be found [here](https://support.kandji.io/support/solutions/articles/72000560362-auto-apps-overview)

---

### Intune

1. Upload Elevate24 installer as a 'macOS app(PKG)'
2. Configure settings for the application including deployment
3. Upload a [Template profile](/Template%20Profiles/)
4. Scope the configuration profile to the correct users / groups. 

>[!NOTE]
>More in-depth instructions for Intune can be found [here](https://learn.microsoft.com/en-us/mem/intune/apps/macos-unmanaged-pkg)