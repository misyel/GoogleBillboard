public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
  for (int i=0; i<e.length()-10; i++) {
    String digits = e.substring(i, i+10);
    double dNum = Double.parseDouble(digits);
    if (isPrime(dNum) == true) {
      System.out.println(dNum);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num)  
{   
  double num2 = Math.abs(num);
  if (num2 > 2 && num2%2==0) {
    return false;
  }
  if (num == 1) {
    return false;
  }
  for (int i=3; i<= Math.sqrt(num); i+=2) {
    if (num%i == 0) {
      return false;
    }
  }
  return true;
} 