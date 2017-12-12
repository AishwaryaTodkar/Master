public class SOQL_multipicklist4 {
    

    public void show() {
        
    	List <Account> acc1 = [select ID, name from account Where Enrol__c INCLUDES ('2010')];
		List <Account> acc2 = [select ID, name from account Where Enrol__c INCLUDES ('2013', '2014')];
        for(Account a : acc1) {
            
            System.debug(a);
        }
        for(Account a : acc2) {
            
            System.debug(a);
        }
    } 

}