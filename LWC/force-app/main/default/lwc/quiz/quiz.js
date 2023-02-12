import { LightningElement } from 'lwc';

export default class Quiz extends LightningElement {
correct=0;
incorrect=0;
totalquestions=5;
progress;
answer1;
answer2;
answer3;
answer4;
answer5;
handlechange(event){
    const fieldname=event.target.name;
    if(fieldname==="answer1"){
        this.answer1=event.target.value;

    }
    else if(fieldname==="answer2"){
        this.answer2=event.target.value;

    }
    else if(fieldname==="answer3"){
        this.answer3=event.target.value;

    }
    else if(fieldname==="answer4"){
        this.answer4=event.target.value;

    }
    else if(fieldname==="answer5"){
        this.answer5=event.target.value;

    }
    this.totalcorrect();
   
}
totalcorrect(){
    var total_correct=0;
    var total_incorrect=0;
    if(this.answer1!=null){
        if(this.answer1==10){
            total_correct=total_correct+1;
        }
        else{
            total_incorrect=total_incorrect+1;
        }
    }
    if(this.answer2!=null){
        if(this.answer2==90){
            total_correct=total_correct+1;
        }
        else{
            total_incorrect=total_incorrect+1;
        }
    }
    if(this.answer3!=null){
        if(this.answer3==15){
            total_correct=total_correct+1;
        }
        else{
            total_incorrect=total_incorrect+1;
        }
    }
    if(this.answer4!=null){
        if(this.answer4==198){
            total_correct=total_correct+1;
        }
        else{
            total_incorrect=total_incorrect+1;
        }
    }
    if(this.answer5!=null){
        if(this.answer5==400){
            total_correct=total_correct+1;
        }
        else{
            total_incorrect=total_incorrect+1;
        }
    }
 this.correct=total_correct;
 this.incorrect=total_incorrect;
 this.progress=(total_correct+total_incorrect)/this.totalquestions*100;
}

}