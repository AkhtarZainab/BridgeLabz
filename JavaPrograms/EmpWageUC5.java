 public class EmpWageUC5 {

	private static final int IS_FULLTIME=2;
	private static final int IS_PARTTIME=1;
	private static final double RATE_PER_HRS=20.0;
	private static final int TOT_DAYS=20;
	private static String EMP_TYPE;
	private static double calculateWage;
	private static int HRS;

	public static void main(String[] args){

		empCheck();

	}


	public static double empCheck(){

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
		calculateWage = RATE_PER_HRS * HRS * TOT_DAYS;
		System.out.println("Employee is "+ EMP_TYPE + " and its monthly wage is : "+ calculateWage);
		return 0.0;

		
}
}