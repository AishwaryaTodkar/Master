public class ContactCount {

   Integer cnt = [ select count() from Contact Where Account.Name = 'Eternus' ];
    List<Account> acc = [select Name from Account];
    public void count() {
        for(Account a : acc) {
            if(a.Name == 'Eternus') {
                a.Contact_Count__c = cnt;
            } 
        }
        update acc;
    }
}