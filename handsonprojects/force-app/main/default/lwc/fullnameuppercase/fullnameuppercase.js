import { LightningElement,track } from 'lwc';

export default class Fullnameuppercase extends LightningElement {

    @track firstName;
    @track lastName;
   
    ChangeHandler(event) {
        const field = event.target.name;
        if (field === 'FirstName') {
            this.firstName = event.target.value;
        } else if (field === 'LastName') {
            this.lastName = event.target.value;
        }
    }
    get FullName(){
        return  `${this.firstName} ${this.lastName}`;
    }
}