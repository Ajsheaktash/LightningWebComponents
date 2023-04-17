/**
 * @description       : 
 * @author            : Ajshe Aktash
 * @group             : 
 * @last modified on  : 02-18-2023
 * @last modified by  : Ajshe Aktash
**/
public class AccountHandler {
    @AuraEnabled(cacheable=true)
    public static List<Account> retrieve(String searchterm){
        String search= '%' + searchterm + '%'; 
        List<Account> multiAcc= New List<Account>();
        try {
            multiAcc=[SELECT id, Name, Phone, Industry,CreatedDate FROM Account WHERE Name LIKE :search ORDER BY CreatedDate ASC LIMIT 10];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAcc;
    }
}