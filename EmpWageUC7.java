 public class EmpWageUC7 {

	private static final int IS_FULLTIME=2;
	private static final int IS_PARTTIME=1;
	private static final double RATE_PER_HRS=20.0;
	private static final int MAX_TOT_DAYS=20;
	private static final int MAX_TOT_HRS=100;
	private static int TOT_DAYS=0;
	private static int TOT_HRS=0;
	private static int HRS;
	private static String EMP_TYPE;
	private static double calculateWage;

	public static void main(String[] args){

		empCheck();

	}


	public static double empCheck(){
		while (TOT_HRS < 100 && TOT_DAYS < 20) {
			TOT_DAYS=TOT_DAYS+1;
			System.out.println("Day " + TOT_DAYS);
			final int ranNumber = (int) (Math.floor(Math.random() * 10) % 3);
			System.out.println(ranNumber);

			switch(ranNumber){
			case IS_FULLTIME:
				EMP_TYPE="Full-time";			
				break;
			case IS_PARTTIME:
				EMP_TYPE="Part-time";
				break;
			default:
				EMP_TYPE="Absent";			
			}
			HRS = 4 * ranNumber;
			calculateWage = wageCalc(RATE_PER_HRS, HRS);
			TOT_HRS=TOT_HRS + HRS;
			System.out.println("Employee is "+ EMP_TYPE + " and its wage is : "+ calculateWage);
			System.out.println("Total Hours is :" + TOT_HRS);
		}
		
		return 0.0;

		
	}

 	
	static double wageCalc(double ratePerHrs, int hours){
		   	double wage;
			wage = ratePerHrs * hours;
			return wage;
		}
	
}
