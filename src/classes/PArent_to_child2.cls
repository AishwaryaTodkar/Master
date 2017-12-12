public class PArent_to_child2 {
    
    public void displayAccount() {

	    list<Account> accounts = [select name, (select name from opportunities where StageName = 'Closed Won') from Account];
        
        for(Account ac : accounts) {
            System.debug(ac);
        }
    }
}