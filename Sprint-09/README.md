# Sprint 8 - Salesforce Apex

## Overview

In this sprint, I worked on asynchronous Apex in Salesforce. The main focus was on understanding how Queueable Apex and Batch Apex can be used to process records in the background.

I worked with the Application, Job, Student, and Company objects and used their relationships while working with SOQL and Apex.

## What I Worked On

* Created Queueable Apex classes for background processing.
* Used Queueable Apex to pass record Ids between jobs.
* Implemented Queueable job chaining.
* Created Batch Apex to process Application records.
* Used SOQL queries to retrieve Application and related Job, Company, and Student records.
* Created a Batch process to identify Jobs whose closing date has passed.
* Updated expired Open Jobs to Closed.
* Used DML to save the changes made to Job records.
* Used `start()`, `execute()`, and `finish()` methods in Batch Apex.

## Apex Classes

The project contains the following Apex classes:

* `OfferPostProcessingJob.cls` - Handles offer post-processing using Queueable Apex.
* `ExternalPlacementSyncJob.cls` - Handles external placement synchronization and starts the notification job.
* `PlacementNotificationJob.cls` - Handles notification processing after synchronization.
* `PlacementCategoryBatch.cls` - Processes Application records using Batch Apex.
* `ExpiredJobBatch.cls` - Finds expired Open Jobs and changes their status to Closed.

## Objects Used

### Application

Used for storing student job application details.

### Job

Used for storing job opportunity details such as closing date, salary package, company and status.

### Student

Used for storing student details such as CGPA, branch and backlogs.

### Company

Used for storing company information such as industry, package and location.

## Queueable Apex

I used Queueable Apex for tasks that can run in the background.

I also practiced chaining one Queueable job with another. In my project, the external placement synchronization job starts the placement notification job.

## Batch Apex

I used Batch Apex for processing multiple records.

I learned how the Batch Apex process works using:

* `start()` to get the records
* `execute()` to process the records
* `finish()` after the processing is completed

I also used Batch Apex to find Jobs whose closing date has passed and update their status from Open to Closed.

## What I Learned

Through this sprint, I learned:

* Basics of asynchronous Apex
* Queueable Apex
* Queueable job chaining
* Batch Apex
* SOQL relationship queries
* DML updates
* Processing records in batches
* Working with related Salesforce objects
* How background processing can be used in Salesforce

## Project Structure

```text
Sprint-8
│
├── OfferPostProcessingJob.cls
├── ExternalPlacementSyncJob.cls
├── PlacementNotificationJob.cls
├── PlacementCategoryBatch.cls
└── ExpiredJobBatch.cls
```

## Conclusion

This sprint helped me understand how Salesforce can handle background processing using asynchronous Apex. I got practice with Queueable Apex, Batch Apex, SOQL, relationship queries, and DML operations.

