level state management
cookieMonsterDie
	
	self display turnOffDisplay.
	self cookieMonster lifeQuantity < 0 ifTrue: [^ self gameOver].
	self loadScreen: CqDyingScreen