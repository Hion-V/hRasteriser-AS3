package Logic 
{
	import Logic.Point3D;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Vec3d extends Logic.Point3D
	{
		public var xOff:Number;
		public var yOff:Number;
		public var zOff:Number;
		public var degreesFromZ:Number=0;
		public var degreesFromX:Number=0;
		public var mag:Number;
		public var magXY:Number;
		public var radsFromX:Number = 0;
		public var radsFromZ:Number;
		public var arrayIndex:int;
		public static var radConst:Number = 180 / Math.PI;
		public static var Vectors:Array = [];
		public function Vec3d() 
		{
			super(0, 0, 0);
			pointArray.pop();
			Vectors.push(this);
			arrayIndex = Vectors.length - 1;
		}
		public function fromPoint(p1:Array, p2:Array):void
		{
			x = p1[0];
			y = p1[1];
			z = p1[2];
			xOff = p2[0] - x;
			yOff = p2[1] - y;
			magXY = Math.sqrt(xOff * xOff + yOff * yOff);
			radsFromX = Math.atan2(yOff, xOff);
			degreesFromX = radsFromX * radConst;
			zOff = z - p2[2];
			mag = Math.sqrt(magXY * magXY + zOff * zOff);
			radsFromZ = Math.atan2(zOff, mag);
			degreesFromZ = radsFromZ * radConst;
		}
		public function fromAngle(p1:Array, ang:Array, _mag:Number = 0):void
		{
			x = p1[0];
			y = p1[1];
			z = p1[2];
			mag = _mag;//schuin
			degreesFromZ = ang[0];
			radsFromZ = degreesFromZ / radConst
			degreesFromX = ang[1];
			radsFromX = degreesFromX / radConst;
			magXY = Math.cos(radsFromZ) * mag;
			xOff = Math.cos(radsFromX) * magXY; //aanliggend = cos(degreesFromX) * mag
			yOff = Math.sin(radsFromX) * magXY; //overstaand = sin(degreesFromX) * mag
			zOff = Math.sin(radsFromZ) * mag;	//overstaand = sin(degreesFromZ) * mag
		}
		public function debugData():void
		{
			trace("x: " + x);
			trace("y: " + y);
			trace("z: " + z);
			trace("xOff: " + xOff);
			trace("yOff: " + yOff);
			trace("radians: " + radsFromX);
			trace("zRot: " + degreesFromX);
			trace("mag: " + mag);
			trace("ArrayIndex: " + arrayIndex);
		}
		
	}

}