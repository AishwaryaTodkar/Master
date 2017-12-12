public class HandlerForContact {
	public void checkDuplicates(List<Contact> contactList) {
		set<String> SetOfemails = new set<String>();
    	set<String> setOfPhones = new set<String>();
    	for(Contact contacts1 : contactList) {
        	SetOfemails.add(contacts1.Email);
        	setOfPhones.add(contacts1.Phone);
    	}
    	List<Contact> duplicateList= [select email, Phone from contact];
    	set<String>duplicateSetOfEmail = new set<String>();
    	set<String>duplicateSetOfPhones = new set<String>();
    	for(Contact contacts2 : duplicateList) {
        	duplicateSetOfEmail.add(contacts2.Email);
        	duplicateSetOfPhones.add(contacts2.Phone);
    	}
    	for(Contact contacts3 : contactList) {
       		// if((duplicateSetOfEmail != NULL && duplicateSetOfPhones != NULL )){
        	if((duplicateSetOfEmail.contains(contacts3.Email) || duplicateSetOfPhones.contains(contacts3.Phone))){
            	contacts3.addError('A contact with same Email or phone number');
        	}
        	//if(contacts3.Lastname.toLowerCase().contains('name')) {
        		//contacts3.Applying_For__c = 'Trainee Engineer';	
        	//}
      //  }
      /*  else {
            try {
                insert contacts3;
            }
            catch(DMLException e) {
                System.debug(e.getMessage());
            }
        }*/
    	}
	}  
}