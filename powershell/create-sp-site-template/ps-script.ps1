############### Save SP Site Template to Local machine) #####################
# Define Site
 $SiteURL = "https://yourtenant.sharepoint.com/sites/YourSite"      #CHANGE
#Connect to PnP Online
Connect-PnPOnline -Url $siteUrl -Interactive -ForceAuthentication
#Get Site Schema
Get-PnPSiteTemplate -Out "C:\SiteTemplate.xml"                      #CHANGE