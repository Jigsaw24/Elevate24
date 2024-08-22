# Install and Deployment

Elevate24 install is a .pkg file. Simply run the installer or deploy using your MDM of choice. 

---

### Jamf Pro

1. Upload the Elevate24 installer pkg file to Jamf Pro
2. Create a custom configuration profile with the preference domain `com.jigsaw24.Elevate24`. See documentation for the profile contents [here](/docs/Configuration%20Keys.md)
3. Scope the configuration profile to the computers
4. Add the pkg too a Jamf Policy. 

>[!INFO]
>More in-depth instructions for Jamf Pro can be found [here](https://learn.jamf.com/en-US/)

---

### Kandji

1. Create a custom application library item
2. Upload the Elevate24 installer pkg file to custom application
3. Create a custom configuration profile with the preference domain `com.jigsaw24.Elevate24`. See documentation for the profile contents [here](/docs/Configuration%20Keys.md)
4. Scope the configuration profile and Custom library item to the blueprint.

>[!INFO]
> More in-depth instructions for Kandji can be found [here](https://support.kandji.io/support/solutions/articles/72000558748-custom-apps-overview?utm_feeditemid=&utm_device=c&utm_medium=paid&utm_source=google&utm_campaign=ch.sem_tgt.kandji-brand_mt.phrase_rgn.emea.t1&utm_term=kandji%20software&utm_content=704677151233&hsa_acc=1685973693&hsa_cam=17941376315&hsa_grp=138369357294&hsa_ad=704677151233&hsa_src=g&hsa_tgt=kwd-1064170745646&hsa_kw=kandji%20software&hsa_mt=p&hsa_net=adwords&hsa_ver=3&cq_sr=google_ads&cq_cmp=17941376315&cq_con=138369357294&cq_plac=&cq_net=g&cq_plt=gp&gad_source=1&gbraid=0AAAAAC6TjD_fjOKrNafweHCbY1natThHa&gclid=EAIaIQobChMIg4jT9PSIiAMVI6JQBh3kJhWtEAAYASAAEgKAJvD_BwE)

---

### Intune

1. Upload Elevate24 installer as a 'macOS app(PKG)'
2. Configure settings for the application including deployment
3. Create a custom configuration profile with the preference domain `com.jigsaw24.Elevate24`. See documentation for the profile contents [here](/docs/Configuration%20Keys.md)
4. Scope the configuration profile to the correct users / groups. 

>[!INFO]
>More in-depth instructions for Intune can be found [here](https://learn.microsoft.com/en-us/mem/intune/apps/macos-unmanaged-pkg)