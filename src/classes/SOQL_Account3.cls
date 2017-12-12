public class SOQL_Account3 {    
   // map<String, Name> map1 = new map<String, Name>([select Id,Name from Account]);

    public void displayAccount() {
        
        list<Account> lsAccount = [select ID, Name from Account];
    	map<String, ID> map1 = new map<String, ID>();
		map<ID, Account> map2 = new map<ID, Account>([select Id,Name from Account]);
    
        for(ID key : map2.keySet()) {
        
        	System.debug(key + ''+''+ map2.get(key));

    	}
        for(Account acc : lsAccount) { 
        	
            map1.put(acc.name, acc.name);
  
        }
		System.debug('-----------------------------------------------');        
        for(ID key : map1.keySet()) {
        
        	System.debug(key + ''+''+ map1.get(key));

    	}
    }
}