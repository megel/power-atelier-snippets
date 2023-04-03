## Attendee_to_Event

This Power Automate operation is a `Scope` action that contains the following actions:

1. `Parse_JSON`: A `ParseJson` action that extracts the event ID and the new attendee email address from the trigger body.
2. `Send_an_HTTP_request_-_Attendees`: An `OpenApiConnection` action that sends an HTTP request to update the event to hide attendees.
3. `Send_an_HTTP_request_-_Event`: An `OpenApiConnection` action that sends an HTTP request to get the details of the event.
4. `New_Attende`: A `Compose` action that creates a new attendee object using the email address extracted from the trigger body.
5. `Send_an_HTTP_request_-_Event_2`: An `OpenApiConnection` action that sends an HTTP request to update the event with the new attendee added.

### Connector and Connection
This flow uses the shared_office365groups connector, which requires a connection to a valid Office 365 Group. The connection is established using the shared_office365groups connection reference.

#### Output
The flow has no output, but it updates the Attendees list of the specified event in Microsoft Graph API.
