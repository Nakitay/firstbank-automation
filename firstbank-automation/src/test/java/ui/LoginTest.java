package ui;

import org.testng.annotations.Test;
import ui.pages.LoginPage;

public class LoginTest {

        @Test
        public void loginTest(){

            LoginPage loginPage = new LoginPage();

            loginPage.username.sendKeys("test");

            loginPage.password.sendKeys("123");

            loginPage.loginButton.click();

        }

    }

