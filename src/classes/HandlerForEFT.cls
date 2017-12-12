public class HandlerForEFT {
    public void eftTrigger( List<EFT__c> listOfEFT){
    	//&& eft.Sales_Header__r.status__c =='Open'
    	Case []caseList = new List<case>();
    	List<SalesHeader__c> sales = [select status__c from SalesHeader__c];
    	map<id, SalesHeader__c> salesMap = new map<id, SalesHeader__c>(sales);
    	for(EFT__c eft : listOfEFT ) {
    		for(ID key : salesmap.keySet()){
        		SalesHeader__c sh = salesmap.get(key);
        		if(eft.Method_Name__c == 'Credit Card Address Verify' 
        			&& eft.Transaction_Status__c == 'Declined' 
        		 	&& sh.status__c == 'open'  ) {
					case c = new case();
        			//Id RecordTypeID1 = Schema.SObjectType.Case.getRecordTypeInfosByName().get('Assignment').getRecordTypeId();
        			RecordType rt = [select Id from RecordType where Name = 'Assignments' and SobjectType = 'Case' limit 1];
					QueuesObject q = [Select Queue.Id From QueueSObject where Queue.Name = 'Queue3' AND SobjectType = 'Case'   limit 1];
		        	c.AccountId = eft.Sales_Header__r.Account_del__c;
       				c.ContactId =eft.Sales_Header__r.Contact__c;
        			c.Origin ='Internal';
        			c.OwnerId = q.Queue.ID;
        			//c.RecordType = [select Id from RecordType where Name = 'Assignment' and SobjectType = 'Case'];
        			c.RecordTypeID = rt.Id;
        			c.Reason = 'Address Did not verify';
        			c.Open_sales_Order__c =  eft.Sales_Header__r.ID;
       	 			c.Transaction_Status__c = eft.Transaction_Status__c;
        			c.Sales_Order_Number__c = eft.Sales_Header__r.Name;
        			c.Order_Date__c = eft.Transaction_Date__c;
        			c.Type ='Address Did not verify';
        			c.Status = 'New';
        			c.Priority = 'high'; 
       				c.Status = 'New';
               		ID accID = eft.Sales_Header__r.Account_del__c;
               	//List<EFT__C> listID = [select Sales_Header__r.Account_del__c from EFT__c WHERE ID IN : trigger.new ];
               	//List<EFT__c> listID = [select Sales_Header__r.Account_del__c from EFT__c WHERE ID IN : trigger.new];
                //String sub;
                //for(EFT__c e : listID) {
               	// 	sub = e.Sales_Header__r.Account_del__r.Name;  
                //}
                	c.Subject =  c.Type;
        			caseList.add(c);          
        		}
   	 		}
    	}    
    	try {
        	insert caseList;
    	}catch(DMLException e) {
        	System.debug(e.getMessage());
    	}   
    }
}