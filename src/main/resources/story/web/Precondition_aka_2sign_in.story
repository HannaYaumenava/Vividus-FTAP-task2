Description: Story to check opportunity to sign-in with earlier created account;
					 
Scenario:  Sign-in with earlier created account
Given I am on the main application page
When I click on element located `By.xpath(//*[@href="/login"])`
When I enter `${UserEmail}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `${UserPassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until element located `By.xpath(//*[@data-test-id="header-member-menu-button"])` appears
Then the page with the URL containing 'board' is loaded




