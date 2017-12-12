public class SOSL {

    public void performSOSL() {
        
        List<List<sObject> >  testList = [FIND 'test' IN ALL FIELDS RETURNING Account(Name), Contact(Title), Lead(name), User(name)];
        
        Account []accounts = (list<Account>)testList[0];
        Contact []contacts = (list<Contact>)testList[1];
        Lead []leads = (list<Lead>)testList[2];
        User []users = (list<User>)testList[3];
        
        System.debug('--------------Account-------------');
        for(Account acc : accounts) { 
        	System.debug(acc);
        }
        
        System.debug('--------------Contact-------------');
        for(Contact cont : contacts) { 
        	System.debug(cont);
            
        }
        
        System.debug('--------------Lead-------------');
        for(Lead l : leads) { 
        	System.debug(l);
        }
        
        System.debug('--------------Users-------------');
        for(User u : users) { 
        	System.debug(u);
        }
        
    }   
}