public class Aggr_Opportuntiy1 {

    //map<ID, Account> map2 = new map<ID, Account>([select Id,Name from Account]);
    //select FiscalYear, StageName from Opportunity where StageName = 'Closed' AND FiscalYear = 2017 GROUP BY FiscalYear
        
    public void display() {        
    	List<AggregateResult> aggregateList = [select FiscalYear, sum(amount)TotalAmount from Opportunity where StageName IN('Closed Won', 'Closed Lost') AND FiscalYear = 2017 GROUP BY FiscalYear];
   		map<Integer,Decimal > oppoMap = new map<Integer, Decimal>();
        for(AggregateResult aggregate : aggregateList) {            
            oppoMap.put((Integer)(aggregate.get('FiscalYear')), (Decimal)(aggregate.get('TotalAmount')));
        }       
        for(Integer key : oppoMap.keySet()) {            
            System.debug('Year = '+key + '\t Amount = ' + oppoMap.get(key));
        }        
    }    
}