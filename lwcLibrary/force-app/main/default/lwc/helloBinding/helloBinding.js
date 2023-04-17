import { LightningElement } from 'lwc';

export default class HelloBinding extends LightningElement {
    name='';
    FirstName='';
    LastName='';
    handleInput(event){
        this.name=event.target.value;
    }
    fnameHandler(event){
        this.FirstName=event.target.value;
    }
    lnameHandler(event){
        this.LastName=event.target.value;
    }
    get uppercasedFullName(){
        return `${this.FirstName}${this.LastName}`.trim().toUpperCase();
    }
}