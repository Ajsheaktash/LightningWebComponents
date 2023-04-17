/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class AccountListControllerLwc {
    @AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByEmployeeNumber(Integer numberOfEmployees) {
    return [
        SELECT Name
        FROM Account
        WHERE NumberOfEmployees >= :numberOfEmployees
    ];
}
    @AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByRevenue(Decimal annualRevenue){
        return [Select Name, AnnualRevenue From Account Where AnnualRevenue >= :annualRevenue];
    }
}