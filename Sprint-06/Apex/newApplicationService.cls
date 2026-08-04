/* Create  New ApplicationService.cls */
public with sharing class ApplicationService {

    public static String createApplication(Id studentId, Id jobId) {

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

String result = ApplicationService.createApplication(stu.Id, job.Id);

System.debug(result);
