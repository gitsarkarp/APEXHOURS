public class BankAcct {
	private integer balance=0;
    public string acctName;
    public string acctType;
    
    public void makeDeposit(integer deposit){
        balance = balance+deposit;
    }
    
    public integer getBalance(){
        return balance;
    }

    public void printBalance(){
        system.debug('Balance - ' + balance);
    }
}