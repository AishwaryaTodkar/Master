public class SOQL_Contact1 {

    public void displayContacts() {

    	List<Contact> cont = [select Id, Name from Contact];

        for(Contact c : cont) {
            System.debug(c);
        }
    }
}