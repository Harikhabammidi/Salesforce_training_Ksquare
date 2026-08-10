public with sharing class PlacementController {

    @AuraEnabled(cacheable=true)
    public static List<Job__c> getEligibleJobs(Id studentId) {

        Student__c student = [
            SELECT CGPA__c, Branch__c
            FROM Student__c
            WHERE Id = :studentId
            LIMIT 1
        ];

        return [
            SELECT Id, Name, Job_location__c,
                   Minimum_CGPA__c, Salary_Package__c
            FROM Job__c
            WHERE Minimum_CGPA__c <= :student.CGPA__c
            AND Status__c = 'Open'
        ];
    }

    @AuraEnabled
    public static Id applyForJob(Id studentId, Id jobId) {

        List<Application__c> existing = [
            SELECT Id
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
            LIMIT 1
        ];

        if (!existing.isEmpty()) {
            throw new AuraHandledException(
                'You have already applied for this job.'
            );
        }

        Application__c app = new Application__c(
            Student__c = studentId,
            Job__c = jobId,
            Application_Date__c = Date.today(),
            Status__c = 'Applied'
        );

        insert app;

        return app.Id;
    }
}
