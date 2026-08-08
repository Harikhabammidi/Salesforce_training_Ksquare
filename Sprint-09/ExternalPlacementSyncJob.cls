public class ExternalPlacementSyncJob implements Queueable {

    private Id offerId;

    public ExternalPlacementSyncJob(Id offerId) {
        this.offerId = offerId;
    }

    public void execute(QueueableContext context) {

        System.debug('External sync started: ' + offerId);

        System.enqueueJob(
            new PlacementNotificationJob(offerId)
        );
    }
}
