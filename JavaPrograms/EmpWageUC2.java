public class EmpWageUC2 {

	private static final int Is_fulltime = 1;

	public static void main(String[] args){

		double wage = empCheck();
		System.out.println("Total Employee Wage is: "+ wage);
	}

		/*@return wage;*/

	public static double empCheck(){

		final double ranNumber = Math.floor(Math.random() * 10) % 2;
		if(Is_fulltime == ranNumber){
			System.out.println("Employee is present and its employee wage is");
			final double TotalWage = 20 * 8;
			return TotalWage;
		}else{
			System.out.println("Employee is absent");
			return 0.0;
		}
	}
}
