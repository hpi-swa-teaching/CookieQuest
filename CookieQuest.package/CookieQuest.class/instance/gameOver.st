level state management
gameOver

	self display turnOffDisplay.
	self loadScreen: CqGameOverScreen.
	self cookieMonster lifeQuantity: self cookieMonster startingLifeQuantity