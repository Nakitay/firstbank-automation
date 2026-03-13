package stepDefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import utilities.Driver;
import utilities.ConfigReader;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

    @Before
    public void setup(){

        Driver.getDriver().get(ConfigReader.getProperty("url"));

    }

    @After
    public void tearDown(Scenario scenario){

        if(scenario.isFailed()){

            byte[] screenshot = ((TakesScreenshot)Driver.getDriver())
                    .getScreenshotAs(OutputType.BYTES);

            scenario.attach(screenshot,"image/png","failed_screenshot");

        }

        Driver.closeDriver();

    }

}
/*
Now every scenario automatically opens browser and closes it.
screenshot automatically attached.
 */