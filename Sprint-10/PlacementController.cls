public with sharing class PlacementController {

    @AuraEnabled(cacheable=true)
    public static List<Job__c> getEligibleJobs() {

        return [
            SELECT Id,
                   Name,
                   Job_location__c,
                   Salary_Package__c,
                   Closing_Date__c
            FROM Job__c
            WHERE Status__c = 'Open'
        ];
    }


    @AuraEnabled
    public static Id submitApplication(Id jobId) {

        return ApplicationService.submitApplication(jobId);
    }
}
