# Candidate API Contract

## Endpoint

POST /candidates

## Purpose

Send selected candidate information from Salesforce to the external recruitment system.

## Request

```json
{
  "studentId": "STU10045",
  "name": "Harikha",
  "email": "harikha546@example.com",
  "branch": "CSE(AI&DS)",
  "cgpa": 9.44,
  "jobId": "JOB1007",
  "company": "KSquare",
  "role": "Salesforce Developer",
  "selectionDate": "2026-08-05"
}
