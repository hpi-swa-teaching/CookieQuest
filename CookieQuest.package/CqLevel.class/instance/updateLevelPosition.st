stepping
updateLevelPosition
	"centers the viewport around the cookiemonster" 

	| offset centeredCookieMonsterPosition viewExtent |	
	centeredCookieMonsterPosition := self entityLayer cookieMonster bounds center.
	viewExtent := self owner extent.
	offset := centeredCookieMonsterPosition - (viewExtent / 2).
	offset := offset 
		min: (self extent x - self owner extent x) @ (self extent y - self owner extent y)
		max: 0 @ 0.
	self owner offset: offset.
	