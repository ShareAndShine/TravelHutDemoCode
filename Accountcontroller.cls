public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        //throw new AuraHandledException('Forced error');
        return [
            SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];        
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsList() {
        throw new AuraHandledException('Forced error');              
    }

    /*@AuraEnabled(cacheable=true)
    public static List<Contact> getRelatedContacts(Id accountId) {
        throw new AuraHandledException('Forced error');
        return [
            SELECT Name, Title, Email, Phone
            FROM Contact
            WHERE AccountId = :accountId
            WITH SECURITY_ENFORCED
       ];
    }*/
}
