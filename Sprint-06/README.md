# Sprint 5 – Building Complete Business Transactions with SOQL, DML & Apex

## Objective
Build a complete business transaction by combining:
- Apex
- SOQL
- DML

Instead of learning concepts separately, learn how they work together in a real Salesforce application.

---

# User Stories

- Retrieve Student Information
- Retrieve Job Eligibility
- Prevent Duplicate Applications
- Create Application
- Update Application Status
- Return Meaningful Messages

---

# Sprint 7 – Retrieve Student Information

## Business Requirement
Before validating an application, retrieve the student's information.

## Engineering Principle
Retrieve **only the fields required** for the current business decision.

### Example

```apex
Student__c student = [
    SELECT Id, Name, CGPA__c
    FROM Student__c
    WHERE Id = :studentId
];
```

---

# Sprint 8 – Retrieve Job Information

## Business Requirement

Retrieve the company's eligibility criteria before making any decision.

### Required Information

- Minimum CGPA
- Eligible Branches
- Active Backlogs
- Application Deadline

### Engineering Principle

Only retrieve data that is actually required.

---

# Sprint 9 – Prevent Duplicate Applications

## Business Requirement

A student should not apply to the same company more than once.

## Process

1. Retrieve previous applications.
2. Check whether the student already applied.
3. If duplicate → Reject.
4. Otherwise → Continue.

### Test Cases

| Situation | Expected Result |
|------------|-----------------|
| First Application | Continue |
| Duplicate Application | Reject |
| Different Company | Continue |

### Key Learning

Business validation requires:

- SOQL (retrieve data)
- Apex (apply business logic)

Neither alone is enough.

---

# Sprint 10 – Create Application

## Business Requirement

After all validations succeed:

- Create Application
- Populate required fields
- Save using DML
- Return confirmation

### Engineering Principle

Never perform DML before all business validations complete.

Correct Flow:

Validate
↓

Create Record
↓

Insert Record

---

# Sprint 11 – Update Application Status

## Business Requirement

When recruiter updates the interview result:

Update Application Status.

Possible values:

- Applied
- Shortlisted
- Interview Scheduled
- Selected
- Rejected

Use UPDATE instead of creating a new record.

---

# Sprint 12 – Complete Business Transaction

Complete workflow:

Receive Request
↓

Retrieve Student
↓

Retrieve Job
↓

Check Duplicate
↓

Validate Eligibility
↓

Create Application
↓

Save Record
↓

Display Confirmation

---

# Engineering Principles

## SOQL

Used to retrieve information before making decisions.

Always ask:

> What information do I need?

Retrieve only necessary fields.

---

## DML

Used to:

- Insert
- Update
- Delete

Always perform DML after business validation.

---

# Good Practices

✅ Retrieve only required fields

✅ Validate before DML

✅ One query should answer one business question

✅ Keep methods small and focused

✅ Write reusable service classes

---

# Common Mistakes

❌ Retrieving unnecessary fields

❌ SOQL repeated in multiple methods

❌ DML before validation

❌ One method doing everything

---

# Interview Questions

### Why is SOQL executed before DML?

Because software must retrieve and validate information before changing data.

---

### Why should every query answer one business question?

It keeps queries simple, readable, and efficient.

---

### Why avoid retrieving unnecessary fields?

It wastes resources and reduces performance.

---

### Why perform DML only after validation?

To prevent invalid or incorrect business data from being saved.

---

### How does good service design help new developers?

Small, focused methods make the code easier to understand, maintain, and extend.

---

# Key Takeaways

- Business decisions depend on accurate information.
- SOQL retrieves data.
- Apex applies business rules.
- DML changes data.
- Validate first, then save.
- Enterprise software follows complete business transactions instead of isolated operations.

