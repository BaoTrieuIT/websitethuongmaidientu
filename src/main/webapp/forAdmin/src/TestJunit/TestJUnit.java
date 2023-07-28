package TestJunit;

import static org.junit.Assert.assertEquals;

//import static org.testng.Assert.assertEquals;
import org.junit.Test;

//import static org.testng.Assert.assertEquals;

//import org.testng.annotations.Test;

public class TestJUnit {
	@Test
	public void testSetup() {
		String str = "I am done with JUnit Setup";
		assertEquals("I am done with JUnit Setup", str);
	}
}
