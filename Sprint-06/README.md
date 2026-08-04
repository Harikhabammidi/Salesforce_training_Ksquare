# 🚀 Placement Management System – Sprint 6

A Salesforce Apex project demonstrating how to automate business processes using **Apex Triggers**, **Trigger Handlers**, and **Event-Driven Programming**.

---

## 📌 Project Overview

This project simulates a **Placement Management System** where Salesforce automatically responds to business events. Instead of waiting for user actions, the application performs validations and business operations whenever records are inserted or updated.

---

## ✨ Features

* ⚡ Automatic execution using Apex Triggers
* 🛡️ Prevent duplicate applications before saving
* 📂 Separate Trigger and Handler classes
* 🔄 Bulkified trigger design using Collections
* 📊 Efficient SOQL using Sets and Maps
* ✅ Maintainable and reusable trigger framework

---

## 🛠️ Technologies Used

* Salesforce Apex
* SOQL (Salesforce Object Query Language)
* DML (Data Manipulation Language)
* Salesforce Custom Objects

---

## 📂 Custom Objects

* Student
* Job
* Application

---

## 📁 Apex Classes

* StudentService.cls
* JobService.cls
* ApplicationService.cls
* UpdateApplicationService.cls
* PlacementService.cls

---

## 🔄 Business Flow

```text
Receive Request
        ↓
Retrieve Student
        ↓
Retrieve Job
        ↓
Check Duplicate Application
        ↓
Validate Eligibility
        ↓
Create Application
        ↓
Save Record (DML)
        ↓
Display Confirmation
```

---

## 📚 Sprint Coverage

### Sprint 7

* Retrieve student information required for eligibility validation.

### Sprint 8

* Retrieve job eligibility criteria.

### Sprint 9

* Prevent duplicate applications.

### Sprint 10

* Create and save a new application record.

### Sprint 11

* Update application status.

### Sprint 12

* Complete the full business transaction using SOQL, DML, and Apex.

---

## 🎯 Learning Outcomes

* Retrieve business data efficiently using SOQL.
* Perform data manipulation using DML.
* Apply business validation before database operations.
* Build reusable Apex service classes.
* Understand enterprise transaction flow in Salesforce.

---

## 📸 Project Screenshots

Add screenshots here, such as:

* Student Record
* Job Record
* Application Record
* Apex Classes
* Execute Anonymous Results
* Debug Logs
