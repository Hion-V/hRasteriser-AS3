package logic 
{
	import Geometry.Vertex;
	import logic.Vec3d;
	import flash.geom.Point;
	import game.Game;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Math3d 
	{
		public static function averagePoints(points:Array):logic.Point3D
		{
			var pointsX:Number;
			var pointsY:Number;
			var pointsZ:Number;
			for (var i:int = 0; i < points.length - 1; i++){
				pointsX += points[i].x;
				pointsY += points[i].y;
				pointsZ += points[i].z;
			}
			pointsX /= points.length;
			pointsY /= points.length;
			pointsZ /= points.length;
			return new logic.Point3D([pointsX, pointsY, pointsZ]);
		}
		public static var renderVector:logic.Vec3d = new logic.Vec3d();
		public static function globalToLocal2D(cam:logic.Vec3d, target:Vertex, origin:Point3D):Point3D
		{
			renderVector.fromPoint([cam.x, cam.y, cam.z],  [target.x, target.y, target.z]);
			renderVector.fromAngle([cam.x, cam.y, cam.z], [renderVector.degreesFromZ - cam.degreesFromZ, renderVector.degreesFromX - cam.degreesFromX], pyth([renderVector.xOff, renderVector.yOff]));
			target.screenSpaceCoords = [origin.x + renderVector.xOff, origin.y + renderVector.yOff, renderVector.zOff - origin.z];
			return new Point3D(target.screenSpaceCoords);
		}
		public static var degreesPerPixelX:Number = Game.fovHor / Game.screenWidth
		public static var degreesPerPixelY:Number = Game.fovVert / Game.screenHeight
		public static function toScreenSpace(cam:logic.Vec3d, target:Vertex):Point
		{
			renderVector.fromPoint([cam.x, cam.y, cam.z], [target.x, target.y, target.z]);
			renderVector.fromAngle([cam.x, cam.y, cam.z], [renderVector.degreesFromZ + cam.degreesFromZ + 37, renderVector.degreesFromX - cam.degreesFromX + 45], renderVector.mag);
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
			return new Point((renderVector.degreesFromX) / degreesPerPixelX, (renderVector.degreesFromZ) / degreesPerPixelY);
		}
		public static function pyth(terms:Array):Number
		{
			var powers:Number = 0;
			for each(var term:Number in terms){
				powers += term*term;
			}
			var sqrt:Number = Math.sqrt(powers)
			return sqrt;
		}
	}

}