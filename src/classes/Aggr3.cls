public class Aggr3 {
    public void leadRecords() {        
        Map<String, Integer>  innerMap = new Map<String,Integer>();
        Map<String,  Map<String, Integer> > outerMap = new Map<String,  Map<String, Integer>>();
       	AggregateResult []statusList = [select status, count(LeadSource)CountSource from Lead Group by status];
        AggregateResult []sourceList = [select leadSource from Lead GROUP BY leadSource];
        for(AggregateResult lists : statusList) {
            innerMap.put((String)lists.get('status'), (Integer)lists.get('CountSource') );
        }
        for(AggregateResult lists : sourceList) {            
            outerMap.put((String)lists.get('leadSource') ,innerMap );            
        }        
        for(String key : outerMap.keySet()) {
        	System.debug(key + '' + outerMap.get(key));    
        }
    }
}