public class ChildToParent {

    public void junctionMethod() {
      
        List<A__c> lists = [select name__c, (select ID, Parent_B__r.B_Name__c from Cs__r) from A__c];
        
        for(A__c a : lists) {
            
            System.debug(a);
        }
    }
}
//select company status, LeadSource, count(status), count(LeadSource) from Lead GROUP BY company