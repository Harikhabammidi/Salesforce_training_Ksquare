import { LightningElement, wire } from 'lwc';

import getEligibleJobs from '@salesforce/apex/PlacementController.getEligibleJobs';
import submitApplication from '@salesforce/apex/PlacementController.submitApplication';

export default class EligibleJobs extends LightningElement {

    jobs;

    @wire(getEligibleJobs)
    wiredJobs({ data, error }) {

        if (data) {
            this.jobs = data;
        }

        if (error) {
            console.log(error);
        }
    }

    async handleApply(event) {

        const jobId = event.target.dataset.jobId;

        try {

            const applicationId = await submitApplication({
                jobId: jobId
            });

            console.log('Application submitted:', applicationId);

        } catch (error) {

            console.log('Application failed:', error);

        }
    }
}
