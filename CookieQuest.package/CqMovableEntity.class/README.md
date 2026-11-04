CqMovableEntity is the base class for all physical behaving objects. It is an entity that is able to move.

Instance Variables
	availableJumps:		<Integer>
	currentAcceleration:		<Point>
	gravityInfluence:		<Float>
	isGroundResistanceAdded:		<Boolean>
	movingAccelerationFactor:		<Float>
	picture:		<AnimatedImageMorph>
	precisePosition:		<Point>
	activeState:		<CqCompositeState>
	resistanceCoefficient:		<Float>
	nextState:		<CqCompositeState>
	staticAccelerations:		<Dictionary>
	temporaryAcceleration:		<Point>
	temporaryResistanceCoefficient:		<Float>
	temporaryVelocity:		<Point>
	velocity:		<Point>

availableJumps
	- number of leftover jumps the entity can use

currentAcceleration
	- contains the acceleration of the object

gravityInfluence
	- factor between 0 and 1 which represents how much this object is affected by gravity

isGroundResistanceAdded
	- only the surface resistance of one object can be added as a groundResistance to a
	movable entity (in one entityUpdate cycle)
	-if that was done this variable is true and there is no other ground resistance added
	in the future.
	-After updateMotion this variable is reset to false.

movingAccelerationFactor
	- determines how big (absolute value of the vector) the acceleration is when the object
	moves itself in one direction.

picture
	- the image to represent the entity

precisePosition
	- the position of the entity represented as floating point number

activeState
	- the state of the entity that is currently active (was last entered)

resistanceCoefficient
	- resistance of object against movement
	-the product of this factor and the velocity is used to reduce the currentAcceleration

nextState
	- the state of the entity to which a transition will be performed in the next step

staticAccelerations
	- contains all acceleration components that act on the object for a longer period of time
	(e.g. gravity) in a key->value format

temporaryAcceleration
	- is added to currentAcceleration in updateMotion and then reset

temporaryResistanceCoefficient
	- like resistanceCoefficient but is being reset after one updateMotion was performed

temporaryVelocity
	- is added to velocity in updateMotion and then reset

velocity
	- is the velocity of the object




Some words to our precisePosition implementation
	
We wanted an exact floating point value that represents our position
therefore this class has the extra instance variable precisePosition

Why did we want more precision?
Firstly it is nice and lets you smile to have an acurrate
physics simulation and for that you need a precise position.
More importantly for low velocity and step times a change
of the position could be 0.1 i.e. after 10 steps the object
should have moved by 1 pixel but for something like that
you need a position that actually allows floating point values
and doesn't round them.
This scenario is important because for instance our ice ground
produces very low velocity and really needs this precision for
a good gameplay.

Why is it implemented the way it is?
The problem is that we need to update the precisePosition if
Morph>>position: is called. But overwriting Morph>>position doesn't
do the trick in all cases. For example if a parent changes his position he
directly calls privateFullMoveBy on his children. As a consequence we need
to overwrite privateFullMoveBy which is ok, because in the super implementation
the comment says that it may be overwritten for an own coordinate system,
which a more precise one is.
That means we have overwritten privateFullMoveBy to update our
precisePosition too. Now we have to update the normal position if the
precisePosition is set (CqMovableEntity>>precisePosition: ). If we would
call Morph>>position: the implementation there would call 'self privateFullMoveBy',
so we would effectively update our precisePosition one more time but we
already set precisePosition to the new point. We could simply don't update precisePosition
in CqMovableEntity>>precisePosition: but unfortunately privateFullMoveBy only gets
a rounded delta and we want the non rounded value. --> we have to update
precisePosition in this CqMovableEntity>>precisePosition. The only way to prevent
double updating precisePosition is to use an own implementation of 'position:' which
doesn't call 'self privateFullMoveBy' but rather 'super privateFullMoveBy' and the
rest of the code is the same as Morph>>position: Moreover this own implementation
may not override the Morph>>position: implementation (we cant put the code into a
method CqMovableEntity>>position: ) because then other calls to
CqMovableEntity>>position: wouldn't update the precisePosition too, but in most cases
we want it to be updated. This leads to a new method called basicPosition which is
called in CqMovableEntity>>precisePosition:
This results in much code duplication but unfortunately this is the best way to
implement this new precisePosition.