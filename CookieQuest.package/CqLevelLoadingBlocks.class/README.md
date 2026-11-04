A CqLevelLoadingBlocks encapsulates some CookieQuest functionality to make it available for other objects.

Instance Variables
	cookieMonsterLifeQuantityGetterBlock:		<BlockClosure>
	dieBlock:		<BlockClosure>
	gameOverBlock:		<BlockClosure>
	loadFirstLevelBlock:		<BlockClosure>
	loadLevelBlock:		<BlockClosure>
	reloadLevelBlock:		<BlockClosure>

cookieMonsterLifeQuantityGetterBlock
	- returns reamining cookiemonster live

dieBlock
	- executed if cookiemonster dies and more live are available

gameOverBlock
	- executed if cookiemonster dies an no live remains  

loadFirstLevelBlock
	- loads the first level

loadLevelBlock
	- loads a specific level 

reloadLevelBlock
	- reload current level
