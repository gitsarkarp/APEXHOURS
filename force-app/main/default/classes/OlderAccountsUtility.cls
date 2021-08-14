public class OlderAccountsUtility {
    public static void updateOlderAccounts(){
        List<Account> accts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
        for(Account acct: accts){
            acct.Description  = 'Heritage Account';
        }
        update accts;
    }
}