public class CreatedDateClass {

    
    public void display() {
        
        List <Account> acc = [select Name,ID,CreatedDate from Account];
        Date date2 = System.Today();
      //  Date date2 = date(acc.CreatedDate);
      //  Date date1 = date.newinstance(d1 .year(), d1.month(), d1.day());
        
        for(Account a : acc) {
        
            //if(date.valueof(a.CreatedDate) == System.today() )
            Datetime date1= a.CreatedDate;
            Date dateval = date.newInstance(date1.year(), date1.month(), date1.day());
            //System.debug(dateval);
            
            if(dateval == date2) {
                System.debug(a.Name + '' + dateval);
            }
        } 
        //System.debug('Today date :'+d1);
    }
}