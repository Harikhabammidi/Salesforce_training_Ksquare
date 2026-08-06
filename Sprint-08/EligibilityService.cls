/* EligibilityService */
public class ApplicationService {

    public static void validateApplications(List<Application__c> applications) {

        Set<Id> studentIds = new Set<Id>();

        for(Application__c app : applications){
            if(app.Student__c != null){
                studentIds.add(app.Student__c);
            }
        }

        Map<Id, Student_c> studentMap = new Map<Id, Student_c>([
            SELECT Id, CGPA_c, Backlogs_c
            FROM Student__c
            WHERE Id IN :studentIds
        ]);

        for(Application__c app : applications){

            Student_c student = studentMap.get(app.Student_c);

            if(student != null){

                if(student.CGPA__c < 7){
                    app.addError('Minimum CGPA is 7.');
                }

                if(student.Backlogs__c > 0){
                    app.addError('Student has active backlogs.');
                }
            }
        }
    }
}

/* Trigger */

trigger ApplicationTrigger on Application__c (before insert) {
    ApplicationService.validateApplications(Trigger.new);
}
