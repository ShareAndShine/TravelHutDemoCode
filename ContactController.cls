public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        throw new AuraHandledException('Forced Error');
        /*List<Contact> contactList;
        try {
            contactList = [SELECT FirstName, LastName, Email FROM Contact 
                            WITH SECURITY_ENFORCED ORDER BY FirstName];
        } catch (Exception e) {            
            
        }
        return [SELECT FirstName, LastName, Email FROM Contact 
                WITH SECURITY_ENFORCED ORDER BY FirstName];*/
    }
}
