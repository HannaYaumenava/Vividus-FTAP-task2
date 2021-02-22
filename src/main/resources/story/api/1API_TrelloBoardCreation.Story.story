GivenStories:story/web/Precondition_aka_2sign_in.story
		 
Scenario:  Trello board creation
When I issue a HTTP GET request for a resource with the URL 'https://a.trellocdn.com/prgb/dist/create-board-popover.dd5aba43678ee5a3593e.js'
When I issue a HTTP GET request for a resource with the URL 'https://a.trellocdn.com/prgb/dist/create-board-overlay.dd5061668f48bffda459.js'
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=NEWBoard&defaultLabels=true&defaultLists=true&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=4d479cfe2a0cbaeef8fa3a7c46128673&token=710420036ddf5067f62fb53a6808cabc880374ffe50d886807575a6bb48ad033'
Then the response code is equal to '200'

