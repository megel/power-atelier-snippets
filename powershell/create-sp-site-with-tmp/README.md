# PowerShell Script: Create and apply SharePoint site template

This script creates a new SharePoint site and applies a template file on this site. It requires the [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps) module to be installed.

## Prerequisites

* [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps)

## Usage

1. Replace the following variables with your own values:
   * `$siteUrl`: The URL of your SharePoint Online site.
   * `$newsite_Title`: The title of your new site.
   * `$newsite_alias`: The alias of your new site.
   * `$newsite_description`: The description of your new site.
   * `$templatePath`: The file path of your SharePoint site template file.

2. Run the script in PowerShell.