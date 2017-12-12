public class SOQL_Opportunity6 {

	list<Opportunity> op = [select ID , Name from opportunity  where Amount > 10000 ORDER BY createdDate offset 25 ALL rows];
    
    public void show() {
        
        for(Opportunity o : op) {
            
            System.debug(o);
        }
    }
}