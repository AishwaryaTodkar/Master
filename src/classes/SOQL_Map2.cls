public class SOQL_Map2 {

   
    public void displayActiveUsers() {
       	map <ID,Employee__c> m = new map<ID, Employee__c>([select Name, Full_Name__c from Employee__c Where Is_Active__c = false]);
        for(ID key : m.keySet()) {
            
            System.debug(key + ''+''+ m.get(key));
        } 
    }
}