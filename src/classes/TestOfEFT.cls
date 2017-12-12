@isTest
public with sharing class TestOfEFT {
	static testMethod void createEFTRecords() {
		system.Test.startTest();
		List<EFT__c> eftList = [SELECT Id, Sales_Header__c, Transaction_Status__c, Method_Name__c, Transaction_Date__c, Name FROM EFT__c];
		
		for(EFT__C eft : eftList) {
			eft.Sales_Header__c = 'Test EFT';
			eft.Transaction_Status__c = 'open';
			eft.Method_Name__c = 'Test Method';
			//eft.Name = 'Test Name';
			
			eftList.add(eft);	
		}
		insert eftList;
		system.Test.stopTest();
		
	}
static testMethod void createSalesHeaderRecords() {
				system.Test.startTest();
		 
		List<SalesHeader__c> sale= [SELECT Id, Contact__c, Account_del__c, Status__c FROM SalesHeader__c];
		for(SalesHeader__c s :sale ) {
			s.Contact__c= 'test';
			s.Account_del__c='test';
			s.Status__c='test';
			sale.add(s);
		}
	
		insert sale;
				system.Test.stopTest();
		
}
static testMethod void createcaseRecords() {
				system.Test.startTest();
		
		List<case> cases = [SELECT Id, Subject, Origin, Priority, Reason, Status, RecordTypeId, Type, ContactId, AccountId, Order_Date__c, Sales_Order_Number__c, Open_sales_Order__c, Transaction_Status__c, OwnerId FROM Case];
		for(case c : cases) {
			c.Subject = 'Test Subject';
			c.Origin  = 'test';
			c.Priority = 'test';
			c.Reason ='test';
			c.Status = 'test'; 
			c.RecordTypeId = 'test';
			c.Type = 'test';
			c.ContactId ='test';
			c.AccountId = 'test';
			//c.Order_Date__c = 11/28/2017;
			c.Sales_Order_Number__c = 'test 123';
			c.Open_sales_Order__c ='Test 123';
			cases.add(c);
		}
		
		insert cases;
		system.Test.stopTest();
		
	} 
}