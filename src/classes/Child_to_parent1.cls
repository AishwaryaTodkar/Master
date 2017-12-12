public class Child_to_parent1 {
    
    public void showContacts() {
        
        List<Contact> contacts = [select ID, Account.Industry, Account.Name from Contact where Account.Industry = 'media'];
        
        for(Contact cont : contacts) {
            
            System.debug(cont);
        }
    }
}