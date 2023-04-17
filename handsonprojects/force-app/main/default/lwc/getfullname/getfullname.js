import { LightningElement } from 'lwc';

export default class Getfullname extends LightningElement {
    firstname;
    lastname;
    fullname;
    firstChangeHandler(event){
        this.firstname=event.target.value;
    }
    lastChangeHandler(event){
        this.lastname=event.target.value;
    }
    getFullName(){
        this.fullname=this.firstname+" " +this.lastname;
    }
    }
