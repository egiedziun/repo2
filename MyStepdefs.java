package test3.steps;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import test3.DriverFactory;
import test3.pages.MyStoreMainPage;
import test3.pages.MyStorePage;

public class MyStepdefs extends DriverFactory {
    MyStoreMainPage myStoreMainPage = new MyStoreMainPage(driver);
    MyStorePage myStorePage = new MyStorePage(driver);

    @Given("^I am on Home page$")
    public void iAmOnHomePage() throws Throwable {
        MyStoreMainPage myStoreMainPage = new MyStoreMainPage(driver);
    }

    @When("^I go to LogIn page$")
    public void iGoToLogInPage() throws Throwable {
        myStoreMainPage.loginButton();
    }

    @And("^I fill login field with login \"([^\"]*)\"$")
    public void iFillLoginFieldWithLogin(String login) throws Throwable {
        myStoreMainPage.loginStep(login);
    }

    @And("^I fill password field with password \"([^\"]*)\"$")
    public void iFillPasswordFieldWithPassword(String password) throws Throwable {
        myStoreMainPage.sendPassword(password);
    }

    @And("^I hit button Sign in$")
    public void iHitButtonSignIn() throws Throwable {
        myStoreMainPage.logIn();
    }

    @And("^I log in and I click on My personal information$")
    public void iLogInAndIClickOnMyPersonalInformation() throws Throwable {
        myStoreMainPage.MyInfo();
    }

    @Then("^I can see my personal information$")
    public void iCanSeeMyPersonalInformation() throws Throwable {
        myStorePage.assertInfo();
        destroyDriver();
    }

    @Then("^I can see error message$")
    public void iCanSeeErrorMessage() throws Throwable {

        destroyDriver();
    }
}
