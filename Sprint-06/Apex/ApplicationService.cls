public with sharing class ApplicationService {

    public static Boolean isDuplicateApplication(Id studentId, Id jobId) {

        Integer countApplications = [
            SELECT COUNT()
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
        ];

        return countApplications > 0;
    }
}
/* Execute Anonymous */
Student__c student = [
    SELECT Id
    FROM Student__c
    LIMIT 1
];

Job__c job = [
    SELECT Id
    FROM Job__c
    LIMIT 1
];

Boolean isDuplicate = ApplicationService.isDuplicateApplication(student.Id, job.Id);

if(isDuplicate){
    System.debug('Duplicate Application Found');
}
