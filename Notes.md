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
- Hotwire
- Pay
- Grover(maybe)(some other pdf generation thing)
- Picocss

## Current Working:
- get the layout going
- get the views and navbar for