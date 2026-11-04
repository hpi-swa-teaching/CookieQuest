resetting
resetCookieMonster
	"Set the cookie monster to it's initial position."

	self cookieMonster 
		velocity: self cookieMonster velocity * 0;
		alive: true;
		precisePosition: self position + self metadata cookieMonsterSpawn