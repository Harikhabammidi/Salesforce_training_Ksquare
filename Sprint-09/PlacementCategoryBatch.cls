public class PlacementCategoryBatch
    implements Database.Batchable<SObject> {

    public Database.QueryLocator start(
        Database.BatchableContext context
    ) {
        return Database.getQueryLocator([
            SELECT Id, Name,
                   Status__c,
                   Job__c,
                   Job__r.Name,
                   Job__r.Salary_Package__c,
                   Job__r.Company__c,
                   Job__r.Company__r.Name,
                   Student__c,
                   Student__r.Name
            FROM Application__c
        ]);
    }

    public void execute(
        Database.BatchableContext context,
        List<Application__c> scope
    ) {
        for (Application__c app : scope) {

            System.debug('Application: ' + app.Name);
            System.debug('Student: ' + app.Student__r.Name);
            System.debug('Company: ' + app.Job__r.Company__r.Name);
            System.debug('Package: ' + app.Job__r.Salary_Package__c);
        }
    }

    public void finish(
        Database.BatchableContext context
    ) {
        System.debug('Application batch completed.');
    }
}
