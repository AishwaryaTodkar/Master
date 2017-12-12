public class Lead_Status {
    
    public void display() {
        
        List <Lead> ld = [select Name from Lead Where Status ='Closed - Converted' ];

        for(Lead l : ld) {
          	l.Status = 'Closed - Not Converted';        	 
        }
        update ld;
    }
}