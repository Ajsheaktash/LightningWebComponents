/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-19-2023
 * @last modified by  : Ajshe Aktash
**/
public with sharing class AccountListControllerVisualforce {
    public List<Contact> contacts { get; private set; }
    private ApexPages.StandardController standardController;
    public AccountListControllerVisualforce(ApexPages.StandardController standardController) {
        this.standardController = standardController;
        this.contacts = new List<Contact>();
    }
    public void queryRelatedContacts() {
        this.contacts = [
            SELECT Name, Title, Email, Phone
            FROM Contact
            WHERE AccountId = :standardController.getId() // (2)
        ];
   }
}