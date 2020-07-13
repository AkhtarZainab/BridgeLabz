 public class EmpWageUC6 {

	private static final int is_fulltime=2;
	private static final int is_parttime=1;
	private static final double ratePerHrs=20.0;
	private static final int maxTotDays=20;
	private static final int maxTotHours=100;
	private static int totDays=0;
	private static int totHours=0;
	private static int hours;
	private static String empType;
	private static double calculateWage;

	public static void main(String[] args){

		empCheck();

	}


	public static double empCheck(){
		while (totHours < 100 && totDays < 20) {
			totDays=totDays+1;
			System.out.println("Day " + totDays);
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
			calculateWage = ratePerHrs * hours;
			totHours=totHours + hours;
			System.out.println("Employee is "+ empType + " and its wage is : "+ calculateWage);
			System.out.println("Total Hours is :" + totHours);
		}
		
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
