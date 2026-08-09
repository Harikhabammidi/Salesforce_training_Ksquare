#  Sprint 9 – Interactive Lightning Web Components(LWC)  

##  Overview

In Sprint 10, I continued the **Student Placement Management System** by building an interactive **Eligible Jobs Lightning Web Component**.

In the previous sprint, students could view eligible job opportunities. In this sprint, the focus was on allowing students to **take action by applying for a job**.

The workflow connects the user interface with the backend:

```text
Student
   ↓
Lightning Web Component
   ↓
JavaScript
   ↓
Apex Controller
   ↓
Application Logic
   ↓
Salesforce Data
```

## Sprint Objective

The main objective of this sprint was to build the **Apply workflow** and understand how an LWC communicates with Apex to perform a business operation.

The student should be able to:

* View eligible jobs.
* Select a job.
* Click the **Apply** button.
* Send the correct Job Id to JavaScript.
* Call Apex using an imperative Apex method.
* Create an application record.
* Receive a success or failure result.
* Get clear feedback from the interface.

##  Technologies Used

* **Lightning Web Components (LWC)**
* **HTML**
* **JavaScript**
* **Apex**
* **SOQL**
* **DML**
* **Salesforce Custom Objects**
* **Imperative Apex**
* **Salesforce Data**

## Concepts Covered

### 1. LWC Event Handling

The Apply button uses a click event to start the application process.

```text
User clicks Apply
       ↓
Event Handler
       ↓
JavaScript
```

The Job Id is obtained from the button and passed to the Apex method.

### 2. Imperative Apex

Since applying for a job is an **explicit user action**, an imperative Apex call is used.

```text
LWC JavaScript
      ↓
Apex Controller
      ↓
Application Logic
```

This gives the component control over exactly when the Apex method is executed.

### 3. Apex and Salesforce Data

The Apex controller receives the Job Id and performs the required backend operation.

The application is stored using the **Application** object and its fields such as:

* `Student__c`
* `Job__c`
* `Application_Date__c`
* `Status__c`
* `Remarks__c`

### 4. User Feedback

The component handles different outcomes of the application request.

```text
Ready
  ↓
Submitting
  ↓
Success / Failure
```

The student should clearly understand whether the application was successfully submitted or could not be submitted.

### 5. Duplicate Applications

The backend should protect the system from creating duplicate applications.

The frontend can also prevent repeated clicks while the request is processing.

This gives both:

* **Data protection in the backend**
* **Better user experience in the frontend**

##  Project Files

```text
Sprint-09
│
├── eligibleJobs
│   ├── eligibleJobs.html
│   ├── eligibleJobs.js
│   └── eligibleJobs.js-meta.xml
│
└── PlacementController.cls
```

## Application Flow

```text
Student clicks Apply
        ↓
eligibleJobs.html
        ↓
eligibleJobs.js
        ↓
PlacementController.cls
        ↓
Application processing
        ↓
Application record created
        ↓
Result returned to LWC
        ↓
Success / Error message
```

##  Salesforce Objects Used

### Student

Important fields used:

* `Name`
* `Branch__c`
* `CGPA__c`
* `Backlogs__c`
* `studentId__c`

### Job

Important fields used:

* `Name`
* `Company__c`
* `Minimum_CGPA__c`
* `Salary_Package__c`
* `Job_location__c`
* `Closing_Date__c`
* `Status__c`

### Application

Important fields used:

* `Student__c`
* `Job__c`
* `Application_Date__c`
* `Status__c`
* `Remarks__c`

## What I Learned

In this sprint, I learned how an LWC can be connected to Apex to complete a real business action.

I understood that the **UI should not contain important business rules**. The LWC should request the operation, while Apex and the business layer should handle validation and data processing.

I also learned the importance of handling **loading, success, error, and duplicate-click scenarios** so that the user always knows what is happening.
