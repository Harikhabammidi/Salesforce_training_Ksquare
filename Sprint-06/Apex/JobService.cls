public with sharing class JobService {

    public static Job__c getJob() {

        Job__c job = [
            SELECT Id,
                   Name,
                   Company__c,
                   Minimum_CGPA__c,
                   Closing_Date__c,
                   Status__c
            FROM Job__c
            LIMIT 1
        ];

        return job;
    }
}

/* Execute anonymous Window */
Job__c job = JobService.getJob();

System.debug(job);
System.debug(job.Name);
System.debug(job.Minimum_CGPA__c);
System.debug(job.Status__c);
