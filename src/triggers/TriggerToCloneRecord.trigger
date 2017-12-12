trigger TriggerToCloneRecord on Account (before insert) {
    if(HandlerForAccount.runOnce())
   	{
     	List<Account> AccountList = new List<Account>();  
     	AccountList = Trigger.new.deepClone();
     	insert AccountList;
   	}
   
   	List<Account> accounts = Trigger.new;
   	HandlerForAccount handler = new HandlerForAccount();
	handler.createTask(accounts);
    /*
  Account []a = Trigger.new;
  Account  []aa = a.clone();
	insert aa;    */
}