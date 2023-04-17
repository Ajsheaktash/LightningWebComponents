/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        List<Account> multiAccount=New List<Account>();
        try {
            multiAccount=[ SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name];
        } catch (Exception e) {
            throw new AuraHandledException('Forced error');
        }
    return multiAccount;
       
    }
}