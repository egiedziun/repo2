package test3.steps;

import test3.DriverFactory;
import test3.pages.MyStoreMainPage;
import test3.pages.MyStorePage;

public class Stepdefs extends DriverFactory {
    MyStoreMainPage myStoreMainPage = new MyStoreMainPage(driver);
    MyStorePage page = new MyStorePage(driver);
}
