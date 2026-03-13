package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginStepdefs {

    @Then("user should see dashboard page")
    public void userShouldSeeDashboardPage() {

        System.out.println("Dashboard page is visible");

    }

    @Given("user is on login page")
    public void userIsOnLoginPage() {
    }

    @When("user enters valid username and password")
    public void userEntersValidUsernameAndPassword() {
    }

    @And("user clicks login button")
    public void userClicksLoginButton() {
    }

    @When("user enters username and password")
    public void userEntersUsernameAndPassword() {
    }

    @Then("user should see dashboard")
    public void userShouldSeeDashboard() {
    }
}
