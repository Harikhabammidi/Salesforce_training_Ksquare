# External Recruitment Gateway

## Overview

Built an **External Recruitment Gateway** for the Salesforce Placement Management System to connect Salesforce with an external recruitment platform.

When a student's application is marked as **Selected**, Salesforce sends the candidate's details to the external system using a **REST API callout**.

The integration is designed to run asynchronously using **Queueable Apex** and uses a **Named Credential** for secure external API configuration.

---

## What I Learned

Through this chapter, I learned how Salesforce communicates with external systems using APIs and HTTP callouts.

### Key Concepts

* REST APIs
* HTTP methods such as GET, POST, PUT, PATCH and DELETE
* HTTP requests and responses
* HTTP status codes
* JSON data format
* Apex HTTP Callouts
* `HttpRequest`, `Http`, and `HttpResponse`
* Queueable Apex with callouts
* Named Credentials
* Authentication vs Authorization
* Error handling
* Retry strategies
* Idempotency and duplicate prevention
* Synchronous vs Asynchronous integrations
* Salesforce Connect and External Objects
* Point-to-point integration
* Middleware concepts

---

## What I Did

### 1. Designed the API Contract

Defined the REST API request and response structure.

The candidate information includes:

* Student Id
* Name
* Email
* Branch
* CGPA
* Job Id
* Company
* Role
* Selection Date

Example request:

```json
{
    "studentId": "S101",
    "name": "Student Name",
    "email": "student@example.com",
    "branch": "CSE",
    "cgpa": 8.7,
    "jobId": "J101",
    "company": "ABC Technologies",
    "role": "Software Engineer",
    "selectionDate": "2026-08-11"
}
```

### 2. Implemented Queueable Apex

Created a Queueable Apex integration to perform the external API callout asynchronously.

Flow:

```text
Application Selected
        ↓
Trigger
        ↓
Service
        ↓
Queueable Apex
        ↓
REST API Callout
        ↓
External Recruitment System
```

### 3. Used Named Credentials

Configured a Named Credential for the external recruitment API instead of hard-coding the endpoint or credentials inside Apex.

Example:

```text
callout:Recruitment_API
```

This keeps authentication and endpoint configuration separate from business logic.

### 4. Handled API Responses

Implemented handling for common HTTP responses such as:

```text
200 / 201 → Success
400       → Bad Request
401       → Authentication Failure
403       → Forbidden
404       → Not Found
500       → Server Error
```

### 5. Added Integration Reliability

Designed the integration to track:

* Integration Status
* Integration Error
* External Candidate Id
* Integration Attempts

Possible integration states:

```text
Pending
Success
Failed
Retry
```

### 6. Added Retry and Idempotency Concepts

Designed a retry approach for temporary failures such as server errors.

Also considered **idempotency** so that retrying the same request does not create duplicate candidate records.

---

## Integration Architecture

```text
Salesforce
    |
    v
Application
    |
    | Status = Selected
    v
Trigger
    |
    v
Service Layer
    |
    v
Queueable Apex
    |
    v
Named Credential
    |
    v
REST API
    |
    v
External Recruitment System
    |
    v
HTTP Response
   / \
  /   \
Success Failure
  |      |
  v      v
Success Failed
         |
         v
       Retry
```

---

## Engineering Sprints

### Sprint 32 — Basic Integration

* Created the API contract
* Designed the JSON request
* Created Named Credential
* Implemented Queueable Apex
* Implemented REST callout
* Handled success and error responses

### Sprint 33 — Integration Reliability

* Added integration status tracking
* Added error handling
* Designed retry strategy
* Added duplicate prevention
* Applied idempotency concepts
* Added integration monitoring information

### Sprint 34 — Integration Architecture

Learned when to choose:

* Synchronous integrations
* Asynchronous integrations
* Scheduled Apex
* Batch Apex
* External Objects
* Salesforce Connect
* Middleware

---

## Key Takeaways

This chapter helped me understand that Salesforce integrations are not only about making an API call.

A production-ready integration should also consider:

* Security
* Authentication
* Error handling
* Retry
* Duplicate prevention
* Monitoring
* Data ownership
* Synchronous vs asynchronous processing

The final integration connects the Salesforce Placement Management System with an external recruitment platform in a secure and maintainable way.

