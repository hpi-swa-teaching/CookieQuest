initialization
registerMovementInput: anInputHandler

	anInputHandler
		onKeyDown: CqInputHandler playerLeftKey do: [self startMovingLeft];
		onKeyDown: CqInputHandler playerRightKey do: [self startMovingRight];
		onKeyUp: CqInputHandler playerLeftKey do: [self stopMovingLeft];
		onKeyUp: CqInputHandler playerRightKey do: [self stopMovingRight];
		onKeyDown: CqInputHandler playerJumpKey  do: [self jump]