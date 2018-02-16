package Geometry 
{
	import logic.Vec3d;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import flash.geom.Point;
	import game.Game;
	public class Vertex extends Vec3d
	{
		public static var vertexArray:Array = [];
		public var vertexIndex:int;
		public var screenSpaceCoords:Array = [0, 0, 0];
		public function Vertex(i:* = "undefined") 
		{
			super();
			if (i is String){
				i = [0, 0, 0];
			}
			vertexArray.push(this);
			vertexIndex = vertexArray.length - 1;
			x = i[0];
			y = i[1];
			z = i[2];
		}
		public static var renderVector:logic.Vec3d = new logic.Vec3d();
		public static var degreesPerPixelX:Number = Game.fovHor / Game.screenWidth
		public static var degreesPerPixelY:Number = Game.fovVert / Game.screenHeight
		public function getScreenSpace(cam:Vec3d):Point
		{
			renderVector.fromPoint([cam.x, cam.y, cam.z], [x,y,z]);
			renderVector.fromAngle([cam.x, cam.y, cam.z], [renderVector.degreesFromZ + cam.degreesFromZ, renderVector.degreesFromX - cam.degreesFromX], renderVector.mag);
			if (renderVector.degreesFromX > 180){
				renderVector.degreesFromX -= 360
			}
			if (renderVector.degreesFromX < -180){
				renderVector.degreesFromX += 360
			}
			if (renderVector.degreesFromZ > 180){
				renderVector.degreesFromZ -= 360
			}
			if (renderVector.degreesFromZ < -180){
				renderVector.degreesFromZ += 360
			}
			renderVector.fromAngle([cam.x, cam.y, cam.z], [renderVector.degreesFromZ, renderVector.degreesFromX], renderVector.mag);
			return new Point((renderVector.degreesFromX) / degreesPerPixelX+Game.screenWidth/2, (renderVector.degreesFromZ) / degreesPerPixelY +Game.screenHeight/2);
		}
	}

}