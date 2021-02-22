Description: Story to check opportunity to sign-up;

Meta: @skip
Scenario: Sign-up
Given I am on the main application page
When I enter `<email>` in field located `By.xpath((//*[@type='email'])[1])`
When I click on element located `By.xpath((//button[@type="submit"])[1])`
When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then number of elements found by `By.Xpath(//iframe[@title="recaptcha challenge"])` is GREATER_THAN `0`

Examples:  
|email                                              |name                                     |password  |
|#{generate(regexify'[a-z]{6}\@[a-z]{5}\.[a-z]{3}')}|#{generate(regexify'[A-Z]{1}[a-z]{4,5}')}|RFG457FJ26|
!--|#{generate(regexify'[A-Z]{8}\@[a-z]{3}\.[a-z]{2}')}|#{generate(regexify'[A-Z]{1}[a-z]{6}')}  |4***ghft56| 

!--Scenario: Sign-up(probbable continuation in case if captcha is disabled)
!--When I enter `name` in field located `By.xpath(//*[@id="moonshotCreateTeam"])`
!--When I click on element located `By.xpath(//*[@data-test-id="moonshot-team-type-select"])`
!--When I click on element located `By.xpath(//*[@id="teamTypeSelect"])`
!--When I click on element located `By.xpath(//button[@type="submit"])`
!--When I click on element located `By.xpath(//button[@data-test-id="moonshot-start-free-account"])`
!--When I click on element located `By.xpath(//button[@data-test-id="moonshot-success-button"])`
!--Then the page with the URL containing '/getting-started' is loaded

