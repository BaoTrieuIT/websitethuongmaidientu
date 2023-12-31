package TestJunit;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {

	public static void main(String[] args) {
		Result rs = JUnitCore.runClasses(TestJUnit.class);
		for (Failure fl : rs.getFailures()) {
			System.out.println(fl.toString());
		}
		System.out.println("Result == " + rs.wasSuccessful());

	}

}
