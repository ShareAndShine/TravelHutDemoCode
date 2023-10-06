public with sharing class CaseController {
    
    @AuraEnabled(cacheable=true)
    public static List<Case> getCases() {
        throw new AuraHandledException('Forced Error');
        /*List<Case> CaseList;
        try {
            CaseList = [SELECT FirstName, LastName, Email FROM Case 
                            WITH SECURITY_ENFORCED ORDER BY FirstName];
        } catch (Exception e) {            
            
        }
        return [SELECT FirstName, LastName, Email FROM Case 
                WITH SECURITY_ENFORCED ORDER BY FirstName];*/
    }
}
