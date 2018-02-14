package game.entities 
{
	import logic.Vec3d;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Player extends Entity
	{
		public var angles:Array = [0.0, 0.0, 0.0]//X,Y,Z
		public var pos:Array = [0.0, 0.0, 0.0]//X,Y,Z
		public var cam:logic.Vec3d;
		public var speed:Number = 0.001;
		public var turnSpeed:Number = 0.3;
		public function Player(_pos:Array, _angles:Array) 
		{
			super();
			pos = _pos;
			angles = _angles;
			cam = new logic.Vec3d();
			cam.fromAngle([400, 300, 0], [0, 0, 0], 100);
			cam.debugData();
			trace("Player Entity Index: " + entityIndex);
		}
		public function move(direction:int):void
		{
			switch (direction){
				case 0:
					pos[0] += speed * cam.xOff*timeElapsed;
					pos[1] += speed * cam.yOff*timeElapsed;
					break;
				case 1:
					pos[0] -= speed * cam.xOff*timeElapsed;
					pos[1] -= speed * cam.yOff*timeElapsed;
					break;
				case 2:
					var a:Vec3d = new Vec3d();
					a.fromAngle([cam.z, cam.y, cam.z], [cam.degreesFromZ, cam.degreesFromX - 90], cam.mag);
					pos[0] -= speed * a.xOff*timeElapsed;
					pos[1] -= speed * a.yOff * timeElapsed;
					break;
				case 3:
					var b:Vec3d = new Vec3d();
					b.fromAngle([cam.z, cam.y, cam.z], [cam.degreesFromZ, cam.degreesFromX + 90], cam.mag);
					pos[0] -= speed * b.xOff*timeElapsed;
					pos[1] -= speed * b.yOff * timeElapsed;
					break;
			}
		}
		override public function think():void
		{
			doInputs();
			fixAngles();
			cam.fromAngle(pos, angles, 100);
		}
		private function fixAngles():void
		{
			if (angles[0] > 90)
				angles[0] = 90
			if (angles[0] < -90)
				angles[0] = -90
			for (var i:int = 0; i < angles.length; i++) 
			{
				if (angles[i] > 180){
					angles[i] -= 360;
				}
				if (angles[i] < -180){
					angles[i] += 360;
				}
			}
		}
		public function doInputs():void
		{
			if(buttonTurnRight)
				angles[1]+=turnSpeed*timeElapsed;
			if(buttonTurnLeft)
				angles[1]-=turnSpeed*timeElapsed;
			if (buttonForward)
				move(0);
			if (buttonBack)
				move(1);
			if (buttonStrafeRight)
				move(2);
			if (buttonStrafeLeft)
				move(3);
			if (buttonRotateUp)
				angles[0]++
			if (buttonRotateDown)
				angles[0]--
		}
		
	}

}