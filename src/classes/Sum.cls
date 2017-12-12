public class Sum {

    public void summation(Integer num)
    {
        Integer i, sum=0;
        
        for(i=0; i <= num; i++)
        {
            sum = sum + i;
        }
        
        System.debug('Summation :'+ sum);
    }
}

/*
Sum s= new Sum();
s.summation(3);
*/