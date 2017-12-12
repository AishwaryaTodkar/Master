public class Child_to_parent2 {

    public void showNames() { 
    
        list<C__c> l = [select ID, Parent_A__r.Name__c from C__c where Parent_A__r.Name__c LIKE '%john%'];
        for(C__c c: l) { 
        	System.debug(c);
        }
    }
}