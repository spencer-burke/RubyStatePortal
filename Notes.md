# Ruby State Portal
## Layouts and Views Hierarchy
**unauthenticated layout:**
- landing
- login
- password reset
**authenticated layout:**
- manager page
- occupant/resident page

## User Personas
- property manager
- developer
- resident
- occupant

## Maintenance Request System:
- resident makes maintenance requests with file uploads and a text box
- manager "approves it" and gives it a date
- resident accepts date for maintenance request
- maintenance request is marked as having a date
- resident confirms maintenance was successful
## Communication System:
- resident can send message to manager
- email gets sent so manager can see it
- manager can mark as read
## Content Upload System:
- manager can upload a content packet with rich text wysiwyg editor
## Property List System:
- manager can create multiple properties
- manager can click on property to see everything related to it
-- resident
-- maintenance requests
-- messages
## Resident/Occupant Invite System:
- there is no formal registration system
- property manager is seeded into the system
- property manager can invite residents/occupants to properties
## Lease Storage:
- literally just show the resident their lease

## Stack
- Rails
- Pundit
- rolify
- Hotwire
- Pay
- Grover(maybe)(some other pdf generation thing)
- Picocss

## Current Working:
- scaffold out properties, units, and then pivot table for users
- make pundit class for invitation workflow
- add flashes to layouts at some point
## Current Notes:
- policy being put in controller
- you can stop people from querying endpoints with the require_auth from the rails 8 generator
- you still need policies however to make sure other users don't get access to things from hotwire endpoint
## Features Required:
- invite system
- property/units system
- maintenance request system
- content packet system
- communication system
## Order of Features to be Built:
- property system
- invite system
- content packet system
- communication system
- maintenance tracking system
- report generation system
- official design system
## Features Done:
- password reset system
## Invite Feature Flow
- new controller InvitationsController
- Invitations#new new action receives the form submission and then creates the token and sends the email
- Inivitations#show show action is what the user lands on to show the page, will set the password and or create the user

## Time Spent:
- 14 hours
