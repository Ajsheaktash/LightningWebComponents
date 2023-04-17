/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class AccountControllerLwc {
    @AuraEnabled(cacheable=true)
    public static List<Contact> queryRelatedContacts(Id accountId) {
        return [
            SELECT Name, Title, Email, Phone
            FROM Contact
            WHERE AccountId = :accountId
        ];
    }
}