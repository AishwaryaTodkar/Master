public class Array_Operations {
    
    public void accept( Integer []a ) {
       	Integer len = a.size();
        
        System.debug('---Ascending sort---');
        Integer temp;

		for(Integer i = 0; i < len; i++)
        {
            for(Integer j = i+1; j < len; j++)
            {
                if(a[i] > a[j])
            	{
                	temp = a[i];
               	 	a[i] = a[j];
                	a[j] = temp;
            	}
            }
        }
        
		for(Integer i = 0; i < len; i++)
        {
            System.debug(' ' + a[i]);
        }
        System.debug('---Descending sort---');
      	
        for(Integer i = 0; i < len; i++)
        {
            for(Integer j = i+1; j < len; j++)
            {
                if(a[i] < a[j])
            	{
                	temp = a[i];
               	 	a[i] = a[j];
                	a[j] = temp;
            	}
            }
        }
        for(Integer i = 0; i < len; i++)
        {
            System.debug(' ' + a[i]);
        }
        
        System.debug('Maximum Number : '+a[0]);
        System.debug('Minimum Number : '+a[len-1]);    
        
        Integer []count = new Integer[a[0]];
        
        for(Integer i = 0; i < count.size(); i++)
        {
            count[i]=1;
        }
        
        for(Integer i = 0; i < len; i++)
        {
            for(Integer j = i+1; j < len; j++)
            {
                if(a[i] == a[j])
            	{
                	count[a[i]]++;
            	}
            }
        }
        
        for(Integer i = 0; i < len-1; i++)
        {
            if(count[i] != 0)
            {
           		  System.debug(a[i]+' : '+ count[i]);   
            }
        }
  	   
    }
}


/* Array_Operations a = new Array_Operations();
a.accept(new List<Integer>{1,2,2,3,6,5,3});*/