public with sharing class CreateContactFromCan {
    public void createContact(List<Candidate__c> candsFromTrigger){
        List<Contact> cnts = new List<Contact>();
        Account acct  = [SELECT Id FROM Account LIMIT 1];
        
        for(Candidate__c currCan: candsFromTrigger){
            Contact con = new Contact();
            con.AccountId = acct.Id;
            con.FirstName = currCan.First_Name__c;
            con.LastName = currCan.Last_Name__c;
            con.Email = currCan.Email__c;
            cnts.add(con);
        }
        
        Database.insert(cnts);
    }
}