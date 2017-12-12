public class Demo {

    Integer a,b;
    
   public Demo()
    {
        a = 0;
        b = 0;
        
        System.debug('Default constructor values : a:' + a + '  b:' + b);
    }
    
  public Demo(Integer x, Integer y)
    {
        a = x;	b = y;
        System.debug('Parameterized constructor values : a:' + a + '  b:' + b);
    }
}
/*
Demo d = new Demo();
Demo d1 = new Demo(2,4);
*/