package base;

import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import utilities.Driver;

public class BaseTest {



        @BeforeMethod
        public void setup(){

            Driver.getDriver();

        }

        @AfterMethod
        public void tearDown(){

            Driver.closeDriver();

        }

    }

