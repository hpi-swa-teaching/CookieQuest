initialization
registerInput

	self entityLayer cookieMonster registerInput: self inputHandler.
	self inputHandler
		onKeyStroke: $l do: [self pauseBackgroundSound];
		onKeyStroke: $k do: [self resumeBackgroundSound]