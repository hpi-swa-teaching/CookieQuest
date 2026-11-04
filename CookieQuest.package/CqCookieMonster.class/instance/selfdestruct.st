destruction
selfdestruct

	self alive ifFalse: [^ self].
	self
		cookieQuantity: self startingCookieQuantity;
		nextState: self defaultState;
		alive: false;
		lostLife.
	self levelLoadingBlocks cookieMonsterDie.
