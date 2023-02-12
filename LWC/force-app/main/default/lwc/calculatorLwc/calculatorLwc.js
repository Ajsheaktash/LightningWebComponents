import { LightningElement, track } from 'lwc';

export default class CalculatorLwc extends LightningElement {
 @track   firstNumber;
 @track  secondNumber;
 @track   sum;
 @track   sub;
 @track   multi;
 @track   div;
    fNumberHandler(event){
        this.firstNumber= event.target.value;
    }
    sNumberHandler(event){
        this.secondNumber= event.target.value;
    }
    sumHandler(){
        this.sum=parseInt(this.firstNumber)+parseInt(this.secondNumber);
    }
    subHandler(){
        this.sub=parseInt(this.firstNumber)-parseInt(this.secondNumber);
    }
            
    mulHandler(){
        this.multi=parseInt(this.firstNumber)*parseInt(this.secondNumber);
    }

   
    divHandler(){
        this.div=parseInt(this.firstNumber)/parseInt(this.secondNumber);
    }
                            
                                                
}