initialization
registerDebugInput: anInputHandler

	anInputHandler 
		onKeyStroke: $h do: [self nextState movementState: CqNoclipStillState new];
		onKeyStroke: $j do: [self nextState movementState: CqStillState new]