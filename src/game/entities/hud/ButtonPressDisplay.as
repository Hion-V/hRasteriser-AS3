package game.entities.hud 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import game.entities.Base;
	public class ButtonPressDisplay extends HudElement 
	{
		
		public function ButtonPressDisplay() 
		{
			super();
		}
		override public function think():void
		{
			var a:String = "buttons pressed. "
			if (game.entities.Base.buttonForward)
				a += "w";
			if (game.entities.Base.buttonStrafeLeft)
				a += "a";
			if (game.entities.Base.buttonBack)
				a += "s";
			if (game.entities.Base.buttonStrafeRight)
				a += "d";
			if (game.entities.Base.buttonRotateUp)
				a += "up";
			if (game.entities.Base.buttonRotateDown)
				a += "down";
			if (game.entities.Base.buttonTurnLeft)
				a += "left";
			if (game.entities.Base.buttonTurnRight)
				a += "right";
			hudText = a;
			super.think();
		}
	}

}