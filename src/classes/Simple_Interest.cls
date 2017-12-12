public class Simple_Interest {
    
    public void calculate(Integer p, Integer r, Integer n)
    {
        Double SI = (p*r*n)/100;
        System.debug('Simple interest : ' + SI);
    }	
}

/*
Simple_Interest s = new Simple_Interest();
s.calculate(500,5,2);
*/