# Power Automate Action: Exception_handler

This Power Automate action handles exceptions in a flow and sends an email notification to the exception receiver. The action uses the [Microsoft PowerApps Office 365 Outlook connector](https://docs.microsoft.com/en-us/connectors/office365/) to send the email.

## Inputs

* `shared_office365`: A connection reference to the Office 365 Outlook connector.
* `Compose_|_Exception_receiver`: A Compose action that retrieves the email address of the exception receiver.
* `Create_HTML_table_|_Create_table_with_errors`: A Table action that creates an HTML table with the details of the errors in the flow.

## Usage

1. Create a new Power Automate flow and add the "Exception_handler" action to the flow via Copy (CTRL+C) and Paste (CTRL+V) .
2. Configure the action by setting the `shared_office365` connection reference and the `Create_HTML_table_|_Create_table_with_errors` action.
3. Configure the Scope to run after 'has failed' or 'has timed out' after the main scope of your flow. [See](https://i.imgur.com/XSL3HQc.png).
3. Customize the email message in the "Send_an_email_(V2)_|_Send_mail_to_exception_receiver" action to include the necessary information about the exception.
4. Save and run the flow.
