initialization
initialize

    super initialize.
    self
	alive: true;
	cookieQuantity: self startingCookieQuantity;
	lifeQuantity: self startingLifeQuantity;
	color: Color transparent