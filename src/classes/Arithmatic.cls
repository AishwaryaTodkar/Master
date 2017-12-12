public class Arithmatic {

    public Integer operations(String str, Integer num1, Integer num2)
    {
        Integer result,result2;
        if(str.equals('SUM')) {
            
            result = num1 + num2;
            return result;
           // System.debug('Addition = ' + result);
        }
        else if(str.equals('SUB')) {
            result = num1 - num2;
             return result;
           // System.debug('Subtraction : ' + result);
        }
        else if(str.equals('MUL')) {
            result = num1 * num2;
             return result;
           // System.debug('Multiplication = ' + result);
        }
        else if(str.equals('DIV')) {
            
            result = num1/num2;
          // result2 = num1/num2;
           // System.debug('Division = ' + (num1/num2));
        }
        else {
            System.debug('Invalid String');
        }
        return result;
	}
}