CookieQuest represents the frame where the game is displayed.

Instance Variables
	assetLoader:		<CqAssetLoader>
	content:		<CqLevel or CqScreen>
	cookieMonster:		<CqCookieMonster>
	currentLevelName:		<String>
	display:		<CqHeadUpDisplay>
	viewport:		<TransformMorph>

assetLoader
	- used to get Assets

content
	- current content which is displayed

cookieMonster
	- our protagonist 

currentLevelName
	- name of current level used to reload level

display
	- small display which displays infos like cookiecount and livecount

viewport
	- used to provide a smooth level scrolling
