public class DML1 {
	
    
	//Required Fields Status, Company, LastName
    public void CreateRecords() {
        
        Lead []leadList = new List<Lead>();
        Database.DMLOptions dml = new Database.DMLOptions();
		dml.assignmentRuleHeader.useDefaultRule= true;

        for(Integer i = 0; i<5; i++ ) {
            
            Lead lead = new Lead(FirstName = 'abc' + i);
            leadList.add(lead);
        }
                    
        Database.SaveResult[] insertList = Database.insert(leadList, false);
                       
        
        for(Database.SaveResult result : insertList) {
            
            if(result.isSuccess()) {
                System.debug('Successfully inserted !!');               
            }
            
            else {
                
                Log__c []logList = new List<Log__c>();
                
                for(Database.Error err :result.getErrors()) {                    
                    Log__c errors = new Log__c(Error__c	 = err.getMessage());
                    loglist.add(errors);                    
                }
                insert logList;
            }
        }
      //     	Log__c []logList = new List<Log__c>();
        //   	Log__c errors = new Log__c(Error__c	 = e.getMessage());
         //  	logList.add(errors);
            
           // System.debug(e.getMessage());
    }
}    
//}