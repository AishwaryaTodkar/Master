public class DML2 {

    public void DeleteRecords() {
        
        Account []accounts = [select Id from Account where Active__c = 'No' AND createdDate = LAST_90_DAYS];
        
        try {
            
            delete accounts;
        }
        catch(DmlException e) {
            System.debug(e.getMessage());
        }
    }
}