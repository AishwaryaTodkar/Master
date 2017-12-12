public class HandlerForAccount {	           
	private static boolean run = true;
    public static boolean runOnce() {
		if(run) {
			run = false;
                return true;
        }
        else {
                return run;
        }
    }
    
    public void createTask(List<Account> listOfAccounts) {
    	List<Task> taskList = new List<Task>();
    	for(Account accounts : listOfAccounts) {
    		Task tasks = new Task();
    		tasks.subject = 'Meeting with ' + accounts.Name; 
    		taskList.add(tasks);
    	}
    	
    	insert taskList;
    }    
}

/* trigger TriggerToCloneRecord on Account (before insert) {
    List<Account> accounts = Trigger.new;
    HandlerForAccount   accountObj = new HandlerForAccount();
    accountObj.TriggerToCloneRecords(accounts);
}*/