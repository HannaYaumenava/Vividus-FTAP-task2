Description: Story for brief verifying of user's profile after sign in ;

GivenStories:story/web/Precondition_aka_2sign_in.story

					 
Scenario:  Verify profile
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-profile"])`
When I wait until element located `By.xpath(//*[@id="content"])` contains text '<message>'
When I click on element located `By.xpath( //*[@aria-label="HouseIcon"])`
Then the page with the URL containing 'board' is loaded


Examples: 
|message   |
|Manage your personal information|

				 
