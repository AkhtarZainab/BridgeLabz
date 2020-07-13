public class EmpWageUC1 {

	public static void main(String[] args) {

	int IS_FULL = 1;
	double empCheck = Math.floor(Math.random() * 10) % 2;

	if (empCheck == IS_FULL)
		System.out.println("Employee is present");
	else
		System.out.println("Employee is absent");
	}
}
