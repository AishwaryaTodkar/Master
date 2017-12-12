public class Apex_Loops {
       
    public void accept(){	
        List <Account> acc = [select Id, Name from Account];
        System.debug('---For Loop---');
        for(Account a1 : acc) {
        System.debug(' '+ a1.Id + ' ' + a1.Name);
    	}
        Integer i=0;
        
        System.debug('---While Loop---');
        while(i < acc.size() )
        {
            System.debug(acc.get(i));
            i++;
        }
        
        System.debug('---Traditional For Loop---');
        
        for(i = 0; i < acc.size(); i++)
        {
            System.debug(acc.get(i));
        }
   }
}

/* 
Apex_Loops  a = new Apex_Loops();
a.accept();
*/