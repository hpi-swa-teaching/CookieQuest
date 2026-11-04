transitions
enterState

	super enterState.
	self entity removeAllCollisionStrategies.
		
	self entity level inputHandler
		onKeyDown: CqInputHandler playerJumpKey do: [self entity startNoclipMovingUp];
		onKeyUp: CqInputHandler playerJumpKey do: [self entity stopNoclipMoving];
		onKeyDown: Character arrowDown do: [self entity startNoclipMovingDown];
		onKeyUp: Character arrowDown do: [self entity stopNoclipMoving];
		onKeyDown: CqInputHandler playerLeftKey do: [self entity startNoclipMovingLeft];
		onKeyUp: CqInputHandler playerLeftKey do: [self entity stopNoclipMoving];
		onKeyDown: CqInputHandler playerRightKey do: [self entity startNoclipMovingRight];
		onKeyUp: CqInputHandler playerRightKey do: [self entity stopNoclipMoving].