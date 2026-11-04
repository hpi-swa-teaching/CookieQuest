stepping
step
	
	self extent: self owner extent.
	self owner offset: 0@0.
	
	self updateContentPosition.
	
	self timer: self timer + self stepTime.
	(self timer > self timeTillCallback) ifTrue: [self callback value]