Scenario:  Verify create account
Given I am on the main application page
When I wait until element located `By.xpath(//*[@id="hf-account-flyout"]/span)` appears
When I click on element located `By.xpath(//*[@id="hf-account-flyout"]/span)`
When I click on element located `By.xpath(//*[@id="vh-account-menu-root"]/div[2]/div/a[1]/div)`
When I click on element located `By.xpath(//*[@id="sign-in-form"]/button[2])`
When I enter `#{generate(regexify '[a-z]{10}')}` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `#{generate(regexify '[a-z]{10}')}` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//*[@id="email-su"])`
When I enter `#{generate(regexify '[1-9]{10}')}` in field located `By.xpath(//*[@id="password-su"])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[1])`
Then the page with the URL 'https://www.walmart.com' is loaded


Scenario:  Add to cart
Given I am on the main application page
When I enter `milk` in field located `By.xpath(//*[@id="global-search-input"])`
When I click on element located `By.xpath(//*[@id="global-search-submit"]/span)`
When I click on element located `By.xpath(//*[@id="searchProductResult"]/ul/li[1]/div/div[2]/div[5]/div/a/span)`
When I click on element located `By.xpath(//*[@id="add-on-atc-container"]/div[1]/section/div[1]/div[3]/button)`
When I click on element located `By.xpath(//*[@id="hf-cart"]/span)`
Then the page with the URL 'https://www.walmart.com/cart' is loaded
