registration
registerCollisionStrategiesForCookies

	self
		registerCollisionStrategy: CqAddCookieStrategy new
			for: CqCollision givesCookieProperty;
		registerCollisionStrategy: CqShrinkStrategy new
			for: CqCollision turnMiniProperty;
		registerCollisionStrategy: CqGrowStrategy new
			for: CqCollision turnMaxiProperty;
		registerCollisionStrategy: CqAddLifeStrategy new
			for: CqCollision givesLifeProperty