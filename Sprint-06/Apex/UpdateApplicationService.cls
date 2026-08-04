/* UpdateApplicationService */
public with sharing class UpdateApplicationService {

    public static String updateStatus(Id applicationId, String newStatus) {

        Application__c app = [
            SELECT Id, Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1
        ];

        app.Status__c = newStatus;

        update app;

        return 'Application Status Updated Successfully';
    }
}
/* Execute Anonymous Window */
Application__c app = [
    SELECT Id
    FROM Application__c
    LIMIT 1
];

String result = UpdateApplicationService.updateStatus(
    app.Id,
    'Selected'
);

System.debug(result);
