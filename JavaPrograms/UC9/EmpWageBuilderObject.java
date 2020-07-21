public class EmpWageBuilderObject {

	private static final int IS_PART_TIME = 1;
	private static final int IS_FULL_TIME = 2;

	private final String company;
	private final int RatePerHour;
	private final int workingDays;
	private final int maxHrs;
	private int totalEmpWage;

	public EmpWageBuilderObject(String company, int RatePerHour,int workingDays, int maxHrs){

	this.company = company;
	this.RatePerHour = RatePerHour;
	this.workingDays = workingDays;
	this.maxHrs = maxHrs;
	} 

	public void computeEmpWage(){
		//variables
		int empHrs = 0, totalEmpHrs = 0, totalWorkingDays = 0;

		while(totalEmpHrs <= maxHrs && totalWorkingDays < workingDays) {
			totalWorkingDays++;
			int empCheck = (int) Math.floor(Math.random() * 10) % 3;
			switch(empCheck) {
				case IS_PART_TIME:
					empHrs = 4;
					break;
				case IS_FULL_TIME:
					empHrs = 8;
					break;
				default: 
					empHrs = 0;

			}
			totalEmpHrs += empHrs;
			System.out.println("Day#: "+totalWorkingDays +" Emp Hrs: "+  empHrs);
		}
		totalEmpWage = totalEmpHrs * RatePerHour;
	}

	@Override
	public String toString(){
		return "Total Emp Wage for Company: " +company+ " is: " + totalEmpWage;
	}

	public static void main(String [] args){

		EmpWageBuilderObject Apple = new EmpWageBuilderObject("Apple", 20, 2, 10);
		EmpWageBuilderObject Samsung = new EmpWageBuilderObject("Samsung", 10, 4, 20);
		Samsung.computeEmpWage();
		System.out.println(Samsung);
		Apple.computeEmpWage();
		System.out.println(Apple);


	}

}

