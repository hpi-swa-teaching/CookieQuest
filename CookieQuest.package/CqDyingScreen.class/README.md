A CqDyingScreen is the screen shown after player death, showing the number of remaining lives.

Instance Variables
	content:		<Morph>
	cookieMonsterLifeQuantityText:		<CqPixmapText>
	levelLoadingBlocks:		<CqLevelLoadingBlocks>
	timer:		<Integer>

content
	- the morph centered in the middle of the screen, containing both the dying image and the text representing the number of remaining lives

cookieMonsterLifeQuantityText
	- the text representing the number of remaining lives

levelLoadingBlocks
	- gameHandler needed to control the owner

timer
	- number of milliseconds passed since starting the dying screen, dying screen will be closed if that value exceeds timeTillRestart
