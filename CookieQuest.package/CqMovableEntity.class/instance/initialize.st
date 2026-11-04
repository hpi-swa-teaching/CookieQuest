initialization
initialize

	super initialize.
	self
		isGroundResistanceAdded: false;
		nextState: self defaultState;
		activeState: (CqCompositeNullState newWith: self);
		movingAccelerationFactor: self defaultMovingAccelarationFactor;
		precisePosition: 0 @ 0;
		basicGravityInfluence: self defaultGravityInfluence;
		staticAccelerations: IdentityDictionary new;
		currentAcceleration: 0 @ 0;
		velocity: 0 @ 0;
		resistanceCoefficient: self defaultResistanceCoefficient;
		temporaryResistanceCoefficient: 0;
		temporaryAcceleration: 0 @ 0;
		temporaryVelocity: 0 @ 0;
		availableJumps: self maxAvailableJumps;
		picture: (ImageMorph new extent: 0 @ 0)