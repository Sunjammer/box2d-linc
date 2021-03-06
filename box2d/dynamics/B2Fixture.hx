package box2d.dynamics;

import box2d.collision.shapes.B2Shape;
import cpp.Float32;
import cpp.Pointer;

@:include('linc_box2d.h')
@:native('b2FixtureDef')
@:structAccess
extern class B2FixtureDef {
	var shape : Pointer<B2Shape>;
	var friction : Float32;
	var restitution : Float32;
	var density : Float32;
	var isSensor : Bool;
	@:native('b2FixtureDef') static function create () : B2FixtureDef;
	inline function getReference () : Pointer<B2FixtureDef> {
		return Pointer.addressOf(this);
	}
}

@:include('linc_box2d.h')
@:native('b2Fixture')
extern class B2Fixture {}

@:include('linc_box2d.h')
@:native('::cpp::Reference<b2Fixture>')
extern class B2FixtureRef extends B2Fixture {}
