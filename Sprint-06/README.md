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
* Apex Triggers
* Trigger Handler Pattern
* SOQL
* Collections (List, Set, Map)
* Salesforce Custom Objects

---

## 📂 Custom Objects

* Vehicle
* Student
* Job
* Application

---

## 📁 Apex Components

* VehicleTrigger.trigger
* VehicleTriggerHandler.cls
* ApplicationTrigger.trigger
* ApplicationTriggerHandler.cls

---

## 🔄 Trigger Flow

```text
Business Event
        ↓
Trigger Fires
        ↓
Trigger Handler
        ↓
Retrieve Required Records
        ↓
Apply Business Logic
        ↓
Save / Reject Record
```

---

## 📚 Sprint Coverage

### Sprint 6

* Understand Event-Driven Programming.
* Learn Trigger Events.
* Separate Trigger and Business Logic.
* Design reusable Trigger Handlers.

### Bulkification

* Avoid SOQL inside loops.
* Use Sets to collect unique record IDs.
* Query records only once.
* Store queried records in Maps for fast lookup.

### Duplicate Prevention

* Retrieve existing Application records.
* Compare Student and Job combinations.
* Prevent duplicate applications using `addError()`.

---

## 🎯 Learning Outcomes

* Understand how Salesforce responds automatically to business events.
* Differentiate between **before** and **after** triggers.
* Build reusable Trigger Handler classes.
* Write bulkified trigger logic.
* Use Collections (List, Set, Map) effectively.
* Prevent duplicate records efficiently.

---

## 💡 Engineering Principles

* Triggers should only observe business events.
* Business logic belongs in Handler or Service classes.
* Retrieve data before making business decisions.
* Never write SOQL or DML inside loops.
* Design for scalability and maintainability.

---

## 📸 Project Screenshots

Add screenshots here, such as:

* Vehicle Trigger
* Vehicle Trigger Handler
* Application Trigger
* Application Trigger Handler
* Trigger Execution Logs
* Bulk Insert Results
* Governor Limit Error (Before Bulkification)
* Successful Bulk Insert (After Bulkification)

---

## 🏆 Key Takeaways

* Learned Event-Driven Programming in Salesforce.
* Implemented Trigger and Handler Pattern.
* Prevented Duplicate Applications.
* Applied Bulkification Best Practices.
* Improved code readability, reusability, and scalability.
