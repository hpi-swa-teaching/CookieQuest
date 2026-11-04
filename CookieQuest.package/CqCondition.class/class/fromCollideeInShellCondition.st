instance creation
fromCollideeInShellCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collidee activeState movementToken == CqInShellState stateToken]