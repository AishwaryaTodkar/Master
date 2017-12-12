@isTest
public with sharing class TestTocheckDeuplicate {
	static testMethod void HandleBulkOncontact() {
		List<Contact> contacts = new List<Contact>{};
		for(Integer i= 0; i < 200; i++) {
			Contact cont = new Contact(LastName = 'Name' + i, Applying_For__c = 'Trainee Engineer'); 
			contacts.add(cont);	
		}
		system.test.startTest();
			insert contacts;
		system.test.stopTest();
		
		List<Contact> insertedContacts = [select Lastname from Contact where ID In:contacts];	
	}      
}