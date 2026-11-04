transitions
exitState

	super exitState.
	self entity owner owner inputHandler
		removeOnKeyDown: CqInputHandler playerJumpKey;
		removeOnKeyUp: CqInputHandler playerJumpKey;
		removeOnKeyDown: Character arrowDown;
		removeOnKeyUp: Character arrowDown;
		onKeyDown: CqInputHandler playerJumpKey do: [self entity jump];
		onKeyDown: CqInputHandler playerLeftKey do: [self entity startMovingLeft];
		onKeyUp: CqInputHandler playerLeftKey do: [self entity stopMovingLeft];
		onKeyDown: CqInputHandler playerRightKey do: [self entity startMovingRight];
		onKeyUp: CqInputHandler playerRightKey do: [self entity stopMovingRight]