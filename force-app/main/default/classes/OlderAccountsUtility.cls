public class OlderAccountsUtility {

    public List<Account> acctsToUpdate = new List<Account>();

    public void updateOlderAccounts(){
        
        acctsToUpdate = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
        
        for(Account acct: acctsToUpdate ){
            acct.Description  = 'Heritage Account';
        }
        update acctsToUpdate ;
		
    }
    
    public List<Account> getUpdatedAccounts(){
        return acctsToUpdate ;
    }
	
}