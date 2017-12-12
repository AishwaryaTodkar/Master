public class Lead_Query {


    
    public void accept() {
    
		List <Lead> ld = [select Id from Lead];
   		Set <ID> leadID = new Set <ID>();
        for(Lead l : ld) {
        
        LeadID.add(l.Id);
        }
        
        for(ID ll : LeadID)
        {
            System.debug(ll);
        }
        
    }
    
}