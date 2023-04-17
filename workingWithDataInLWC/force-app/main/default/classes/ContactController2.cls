/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class ContactController2 {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsBornAfter(Date birthDate) {
        return [
            SELECT Name, Title, Email, Phone
            FROM Contact
            WHERE Birthdate > :birthDate
            WITH SECURITY_ENFORCED
       ];
    }
}