package ui.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends BasePage {

        @FindBy(id="username")
        public WebElement username;

        @FindBy(id="password")
        public WebElement password;

        @FindBy(id="login")
        public WebElement loginButton;

    }

