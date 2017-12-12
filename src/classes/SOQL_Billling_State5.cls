public class SOQL_Billling_State5 {


    public void ShowBillingState() {
        
	    list <Account> acc = [select ID, name from account Where BillingState NOT IN ('Maharashtra', 'kerala') ORDER BY BillingState DESC NULLs last LIMIT 5];

        for(Account a : acc) {
            
            System.debug(a);
        }
    }
}