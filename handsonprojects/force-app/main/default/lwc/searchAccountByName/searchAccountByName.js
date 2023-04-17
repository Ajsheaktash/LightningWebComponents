import { LightningElement,wire } from 'lwc';

import retrieve from '@salesforce/apex/AccountHandler.retrieve';

export default class AccountListComponent extends LightningElement {

search='';
visible=false;
accounts=[];

/*@wire (apexMethodName, { apexMethodParams })
propertyOrFunction;
*/

    @wire(retrieve, {searchterm:'$search'}) accounts;

    inputChangeHandler(event){
        this.search=event.target.value;
    }
    checkChangeHandler(event){
        this.visible=event.target.checked;
    }


}

