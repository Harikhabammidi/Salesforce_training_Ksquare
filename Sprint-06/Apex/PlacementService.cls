/* PlacementService.cls */
public with sharing class PlacementService {

    public static String submitApplication(Id studentId, Id jobId) {

        Student__c student = [
            SELECT Id, CGPA__c
            FROM Student__c
            WHERE Id = :studentId
            LIMIT 1
        ];

        Job__c job = [
            SELECT Id, Minimum_CGPA__c
            FROM Job__c
            WHERE Id = :jobId
            LIMIT 1
        ];

        List<Application__c> existing = [
            SELECT Id
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
        ];

        if (!existing.isEmpty()) {
            return 'Duplicate Application Found';
        }

        if (student.CGPA__c < job.Minimum_CGPA__c) {
            return 'Student is not eligible';
        }

        Application__c app = new Application__c();
        app.Student__c = studentId;
        app.Job__c = jobId;
        app.Status__c = 'Applied';
        app.Applied_Date__c = Date.today();

        insert app;

        return 'Application Submitted Successfully';
    }
}

/* Execute Anonymous Window */

Student__c stu = [
    SELECT Id
    FROM Student__c
    LIMIT 1
];

Job__c job = [
    SELECT Id
    FROM Job__c
    LIMIT 1
];

String result = PlacementService.submitApplication(stu.Id, job.Id);

System.debug(result);
