public class Aggr2 {

    public void showLeadSource() {
        
        list<AggregateResult> leads = [select count(ID), LeadSource  from Lead GROUP BY LeadSource HAVING count(LeadSource) > 2];
        
        for(AggregateResult l : leads) {
            
            System.debug(l);
        }
    }
}