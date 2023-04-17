/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-27-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class AccountHelper {
    @AuraEnabled(cacheable=true)
    public static list<Account> getAccountList(){
        try {
         return [Select id, Name, Type, Rating,Phone,Website,AnnualRevenue From Account];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
}
    }
    