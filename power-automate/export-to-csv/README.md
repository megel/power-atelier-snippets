# Power Automate Action - Data Export and Email
This Power Automate action exports data from a Trigger (e.g. PowerApps) and sends it as an attachment via email. The action uses the following connectors:
- Office 365 Outlook

### Inputs
- `text`: The text string of your JSON data to be exported.
- `text_1`: The filename. E.g. filename.csv

## How to Use
2. Insert the trigger you would like to use and create two text inputs for for the JSON data and the filename. [See](https://i.imgur.com/yHHcDqb.png)
2. Copy the json to your clipboard, go to your power automate flow and paste it in the clipboard section
3. Provide the required connection reference for Office 365 Outlook.
4. Use the the data in sample-data.json to test the actions

### Action Steps
1. **Compose | Get Export collection content**: Composes the content of the data to be exported using the `text` input.
2. **Create CSV table**: Converts the composed data into a CSV format.
3. **Send an email (V2)**: Sends an email with the CSV file encoded in UTF-8 attached to the email, who triggered the flow.