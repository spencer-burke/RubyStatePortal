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
- now that the password/login/landing pages and forms are all wired up it's time to start building the app
- create manager dashboard
-- create a data model for property(add to it later with more migrations)
-- create a poro that represents the manager object
-- create the controller that will perform the "show" operation
- create resident dashboard
- from there build out the invite system with proper emails
- also build out password reset
## Next Working:
- decide what is on the manager dashboard
- create data models for the parts
- create poro for manager model
- make rest controller for manager object
- wire up hotwire components
- explore the more literal dashboard option as well