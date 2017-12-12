public class Parent_to_child1 {
    
    public void show1() {

		list <Account> ac = [select Name, (select name from contacts)from Account where Name LIKE '%john%'];
        
        for(Account a : ac) {
            
            System.debug(a);
        }
    }
}