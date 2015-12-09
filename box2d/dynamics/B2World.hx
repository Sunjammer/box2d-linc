package box2d.dynamics;

import box2d.common.math.B2Vec2;
import box2d.dynamics.B2Body;
import cpp.Float32;
import cpp.Pointer;

#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('box2d', '../../'))
#end
@:include('linc_box2d.h')
@:native('b2World')
extern class B2World {
	@:native('new b2World') public static function create (gravity : B2Vec2) : B2WorldRef;
	@:native('~b2World') public function delete () : Void;
	@:native('CreateBody') public function createBody (def : Pointer<B2BodyDef>) : B2BodyRef;
	@:native('GetGravity') public function getGravity () : B2Vec2;
	@:native('Step') public function step (timeStep : Float32, velocityIterations : Int, positionIterations : Int) : Void;
}

#if !display
@:build(linc.Linc.touch())
#end
@:include('linc_box2d.h')
@:native('::cpp::Reference<b2World>')
extern class B2WorldRef extends B2World {}
