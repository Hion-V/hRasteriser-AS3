package Geometry 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import logic.Vec3d;
	import logic.Math3d;
	import logic.Point3D;
	public class Triangle 
	{
		public static var triangleArray:Array
		public var bIsVisible:Boolean;
		public var p1:Vertex;
		public var p2:Vertex;
		public var p3:Vertex;
		public var normal:logic.Vec3d;
		public function Triangle(_p1:Vertex, _p2:Vertex, _p3:Vertex)
		{
			super();
			p1 = _p1;
			p2 = _p2;
			p3 = _p3;
			createTriangleData();
		}
		private function createTriangleData():void
		{
			p1.fromPoint([p1.x, p1.y, p2.z], [p2.x, p2.y, p2.z]);
			p2.fromPoint([p2.x, p2.y, p2.z], [p3.x, p3.y, p3.z]);
			p3.fromPoint([p3.x, p3.y, p3.z], [p1.x, p1.y, p1.z]);
			normal = new logic.Vec3d();
			var avg:logic.Point3D = logic.Math3d.averagePoints([p1, p2, p3]);
			normal.fromPoint([avg.x, avg.y, avg.z], [p1.x, p1.y, p1.z]);
			normal.fromAngle([normal.x, normal.y, normal.z], [0, 0, normal.degreesFromX + 90], normal.mag)
		}
		public function toPixels(cam:Vec3d):void
		{
			//	GET SCREENSPACE COORDINATES FOR THE VERTICES
			var p1SS:Point = p1.getScreenSpace(cam)
			var p2SS:Point = p2.getScreenSpace(cam)
			var p3SS:Point = p3.getScreenSpace(cam)
			//	FIND TOPMOST POINT IN SCREENSPACE
			var sortArray:Array = [p1SS, p2SS, p3SS]
			for (var i:int = 0; i < sortArray.length; i++ ){
				trace(sortArray[i]);
			}
			//	ADD ROUTINE TO DETERMINE THE SLOPE VALUES
			var outputData:BitmapData;
			var output:Bitmap;
			//  ADD ROUTINE THAT USES FOR LOOPS TO DRAW PIXELS INSIDE THE SLOPES TO BITMAP
			return 
		}
	}

}