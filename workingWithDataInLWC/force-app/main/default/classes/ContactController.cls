/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        List<Contact> multicontact=new List<Contact>();
        try {
           multicontact= [
            SELECT FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
       ];
        } catch (Exception e) {
            throw new AuraHandledException('Forced error');
        }
        return multicontact;
    }
}