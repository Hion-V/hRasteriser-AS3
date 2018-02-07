package logic 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Point3D 
	{
		public var x:Number;
		public var y:Number;
		public var z:Number;
		public var pointIndex:int;
		public static var pointArray:Array = [];
		public function Point3D(i:*, j:int = 0, k:int = 0)
		{
			pointArray.push(this);
			pointIndex = pointArray.length -1;
			if(i is Array){
				x = i[0];
				y = i[1];
				z = i[2];
			}
			else{
				x = i;
				y = j;
				z = k;
			}
		}
		
	}

}