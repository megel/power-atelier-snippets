############### Script for creating a new SharePoint site and applying a template file on this site #####################

# Variables
$siteUrl = "https://yourtenant.sharepoint.com"                  # CHANGE 
$newsite_Title = "Your New Site Title"                          # CHANGE 
$newsite_alias = "YourNewSiteAlias"                             # CHANGE
$newsite_description = "Description of Your new site."          # CHANGE
$templatePath = "C:\SiteTemplate.xml"                           # CHANGE

# Install PnP PowerShell module if not installed
if (!(Get-InstalledModule -Name "PnP.PowerShell" -ErrorAction SilentlyContinue)) {
    Install-Module -Name "PnP.PowerShell" -Scope CurrentUser -Force
}

# Connect to main SharePoint Online site to create new site
Connect-PnPOnline -Url $siteUrl -Interactive

# Create the SharePoint Site
New-PnPSite -Type TeamSite -Title $newsite_Title -Alias $newsite_alias -Description $newsite_description

# Connect to the new created site, to apply the template on this site
Connect-PnPOnline -Url ($siteUrl + "/sites/" + $newsite_alias) -Interactive

# Apply the Template.xml to the SharePoint Site
Invoke-PnPSiteTemplate -Path $templatePath

# Clean up the downloaded Template.xml
# Add this if, you want to remove the local template file afterwards
# Remove-Item $templatePath