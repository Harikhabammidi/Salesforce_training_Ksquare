#  Sprint 05 – Building Business Logic with Apex

##  Overview

In this sprint, I focused on designing business logic for the Placement Management System using Apex. I learned how to analyze business requirements, organize responsibilities into service classes, and design scalable software before writing code.

---

## Topics Covered

- Business Logic
- Business Rules
- Apex Service Classes
- Software Architecture
- ApplicationService Design
- Methods & Parameters
- SOQL & DML Concepts
- Engineering Principles

---

## What I Learned

- Identified business rules from customer requirements.
- Understood the importance of separating business logic from the user interface.
- Designed the **ApplicationService** class to handle application-related operations.
- Learned how methods represent business activities and parameters represent business information.
- Understood how SOQL retrieves data and DML stores data in Salesforce.
- Followed an incremental approach to designing business services.

---

##  Sprint Reflection

### 1. Why does ApplicationService exist?
It manages all application-related business operations in one dedicated service.

### 2. What business responsibility does it represent?
Receiving applications, validating eligibility, preventing duplicates, saving records, and returning meaningful results.

### 3. Why do we create methods?
Methods represent individual business activities and keep the code organized and reusable.

### 4. What did I learn today?
I learned that understanding business requirements and designing a clear architecture are more important than writing code first.

---

##  Technologies Used

- Salesforce Playground
- Apex
- VS Code
- Salesforce CLI

---

##  Project Files

- ApplicationService.cls
- BusinessRules.md
- ArchitectureNotes.md
- SprintReflection.md
- README

---

##  Outcome

This sprint helped me understand how enterprise applications are designed by organizing business responsibilities into Apex service classes before implementing the actual business logic.
