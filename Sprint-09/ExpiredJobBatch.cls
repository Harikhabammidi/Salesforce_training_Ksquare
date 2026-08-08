public class ExpiredJobBatch implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext context) {
        return Database.getQueryLocator([
            SELECT Id, Name, Status__c, Closing_Date__c
            FROM Job__c
            WHERE Status__c = 'Open'
            AND Closing_Date__c < TODAY
        ]);
    }

    public void execute(
        Database.BatchableContext context,
        List<Job__c> jobs
    ) {
        for (Job__c job : jobs) {
            job.Status__c = 'Closed';
        }

        update jobs;
    }

    public void finish(Database.BatchableContext context) {
        System.debug('Expired jobs processed successfully.');
    }
}
