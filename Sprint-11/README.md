# Sprint-10 Student Placement Portal – LWC Architecture

## Overview

This project is part of my Salesforce Engineering Sprint where I worked on improving the Student Placement Portal using Lightning Web Components (LWC).

The main focus of this sprint was not just building individual components, but understanding how multiple components communicate and work together as one application.

I worked on Job Cards, Student Profile, Eligible Jobs, Empty States and the application flow using LWC, Lightning Data Service and Apex.

---

## What I Used

- Salesforce
- Lightning Web Components (LWC)
- HTML
- JavaScript
- Apex
- SOQL
- Lightning Data Service (LDS)
- Custom Events
- `@api`
- `@wire`
- `refreshApex()`
- Lightning Record Edit Form
- Salesforce Toast Messages

---

## Engineering Sprints

### Sprint 27 – JobCard Communication

I created a reusable JobCard component that handles job-related actions.

The JobCard sends events to its parent when the user:

- Views job details
- Clicks Apply

I used Custom Events to communicate from the child component to the parent.

### What I learned

- Parent-to-child communication using `@api`
- Child-to-parent communication using Custom Events
- `dispatchEvent()`
- `event.detail`
- Keeping child components independent from parent state

---

### Sprint 28 – Student Profile

I created a Student Profile form using Lightning Data Service.

The student can update:

- Email
- Phone
- Branch
- CGPA

I used `lightning-record-edit-form` and `lightning-input-field` instead of writing unnecessary Apex for basic record updates.

I also handled successful saves and errors using Toast Messages.

### What I learned

- Lightning Data Service
- Salesforce Lightning base components
- Record editing using LDS
- Form handling
- Success and error handling
- Difference between client-side validation and server-side business validation

---

### Sprint 29 – Refresh After Profile Update

Updating the student's CGPA can change which jobs the student is eligible for.

Because of this, the Eligible Jobs component should not continue displaying old data.

I used wired Apex data and `refreshApex()` so the eligible jobs can be refreshed after the student profile is updated.

### What I learned

- Reactive data
- `@wire`
- `refreshApex()`
- Data ownership
- Keeping different components in sync
- Avoiding stale UI data

---

### Sprint 30 – Reusable Empty State

I created a reusable Empty State component for situations where there is no data to display.

The component accepts:

- Title
- Message
- Optional Action

This makes the component reusable instead of creating separate empty-state code for every screen.

### What I learned

- Reusable LWC components
- `@api` properties
- Conditional rendering
- Custom Events
- Designing components around clear responsibilities

---

### Sprint 31 – Final Integration

The final sprint connects the major parts of the placement workflow.

The main flow is:

```text
Student
   ↓
Update Profile
   ↓
Profile Saved
   ↓
Eligible Jobs Refresh
   ↓
Select Job
   ↓
Apply
   ↓
Apex
   ↓
Application Created


## Project Outcome

By completing these sprints, I moved from building isolated LWC components to understanding how components, Salesforce data and Apex work together as one application.

The Student Placement Portal now demonstrates a complete flow from updating student information to refreshing eligible jobs and submitting a job application.
