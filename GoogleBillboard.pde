public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
	for (int i= 0; i < e.length()-10; i++){
		String num = e.substring(i,i+11);
		double dNum = Double.parseDouble(num);
		if (isPrime(dNum) == true){
			System.out.println(dNum);
			break;
		}
	}
}  
public void draw()  
{   
	//not needed for this assignment
}  

public boolean isPrime(double num){
  int factors = 0;
  if (num < 2){
    return false;
  }
  for (int i = 2; i <= Math.sqrt(num);i++){
    if(num%i == 0){
      return false;
    }
  }
  return true;
}