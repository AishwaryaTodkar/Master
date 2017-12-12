public class Parent_Child {
	
    List <Contact> cont = [select  account.Name from contact];
	
    public void Relation() {
        
        for(Contact c : cont) {
            System.debug(c.account.Name);
        }
    	
    }
}