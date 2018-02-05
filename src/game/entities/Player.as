package game.entities 
{
	import Logic.Vec3d;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Player extends Entity
	{
		public var angles:Array = [0.0, 0.0, 0.0]//X,Y,Z
		public var pos:Array = [0.0, 0.0, 0.0]//X,Y,Z
		public var cam:Logic.Vec3d;
		public var speed:Number = 0.001;
		public var turnSpeed:Number = 0.3;
		public function Player(_pos:Array, _angles:Array) 
		{
			super();
			pos = _pos;
			angles = _angles;
			cam = new Logic.Vec3d();
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
			}
		}
		override public function think():void
		{
			doInputs();
			cam.fromAngle(pos, angles, 100);
			fixAngles();
		}
		private function fixAngles():void
		{
			for each (var a:Number in angles) 
			{
				if (a > 360)
					a -= 360;
				if (a < 0)
					a += 360;
			}
		}
		public function doInputs():void
		{
			if(buttonRight)
				angles[1]+=turnSpeed*timeElapsed;
			if(buttonLeft)
				angles[1]-=turnSpeed*timeElapsed;
			if (buttonForward)
				move(0);
			if (buttonBack)
				move(1);
			if (buttonRotateUp)
				angles[0]++
			if (buttonRotateDown)
				angles[0]--
		}
		
	}

}