 public class EmpWageUC5 {

	private static final int is_fulltime=2;
	private static final int is_parttime=1;
	private static final double ratePerHrs=20.0;
	private static final int totdays=20;
	private static String empType;
	private static double calculateWage;
	private static int hours;

	public static void main(String[] args){

		empCheck();

	}


	public static double empCheck(){

		final int ranNumber = (int) (Math.floor(Math.random() * 10) % 3);
		System.out.println(ranNumber);

		switch(ranNumber){
		case is_fulltime:
			empType="Full-time";			
			break;
		case is_parttime:
			empType="Part-time";			
			break;
		default:
			empType="Absent";
						
		}
		hours = 4 * ranNumber;
		calculateWage = ratePerHrs * hours * totdays;
		System.out.println("Employee is "+ empType + " and its monthly wage is : "+ calculateWage);
		return 0.0;

		/*
		   if(ranNumber == is_fulltime){
                        double wage = calculateWage();
                        System.out.println("Employee is Present and its wage is : "+ wage);
                }else if(ranNumber == is_parttime){
                        double wage = calculateWage();
                        System.out.println("Employee is Parttimer and its wage is : "+ wage);
                }else{
                        System.out.println("Employee is absent and no earning");
        	}
		*/
	}

 	/*enum EmployeeType{

        	is_fulltime, is_parttime;
	}

	public double calculateWage(EmployeeType type){
		   switch(type) {
		
		case is_fulltime:
			return ratePerHrs * 8 * totdays;
		case is_parttime:
			return ratePerHrs * 4 * totdays;
		default:
			return 0.0f;
		}
	}*/
}
