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
			if (game.entities.Base.buttonLeft)
				a += "a";
			if (game.entities.Base.buttonBack)
				a += "s";
			if (game.entities.Base.buttonRight)
				a += "d";
			hudText = a;
			super.think();
		}
	}

}