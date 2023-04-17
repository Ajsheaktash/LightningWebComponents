import { LightningElement, api } from 'lwc';

export default class CustomviewWithApi extends LightningElement {
    @api recordId;
    @api objectApiName;
}