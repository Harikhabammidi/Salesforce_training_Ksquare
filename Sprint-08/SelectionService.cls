/* SelectionService */
public class ApplicationService {

    public static void updateSelectedStudents(
        List<Application__c> newApplications,
        Map<Id, Application__c> oldMap
    ) {

        List<Student_c> studentsToUpdate = new List<Student_c>();

        for (Application__c app : newApplications) {

            Application__c oldApp = oldMap.get(app.Id);

            if (oldApp.Status__c != 'Selected' &&
                app.Status__c == 'Selected') {

                Student_c student = new Student_c(
                    Id = app.Student__c,
                    Placement_Status__c = 'Placed',
                    Selected_Company_c = app.Job_c
                );

                studentsToUpdate.add(student);
            }
        }

        if (!studentsToUpdate.isEmpty()) {
            update studentsToUpdate;
        }
    }
}

/* Trigger */
trigger ApplicationTrigger on Application__c (after update) {

    ApplicationService.updateSelectedStudents(
        Trigger.new,
        Trigger.oldMap
    );

}
