public class Even_odd {
    
   public void check(Integer num){
        
        Integer remainder = Math.mod(num,2);
        
        if(remainder == 0){
          System.debug('Number is even'); // 
        }
        
        else{
            System.debug('Number is odd');
        }
    }
}