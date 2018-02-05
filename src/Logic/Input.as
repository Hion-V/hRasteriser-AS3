package Logic 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import flash.events.KeyboardEvent
	import flash.ui.Keyboard;
	import game.entities.Base;
	public class Input 
	{
		
		public function Input() 
		{
			
		}
		public static function onKey(e:KeyboardEvent):void
		{
			var a:Boolean = false;
			if(e.type == KeyboardEvent.KEY_DOWN)
				a = true;
			switch(e.keyCode){
				case Keyboard.W:
					game.entities.Base.buttonForward = a;
					break;
				case Keyboard.A:
					game.entities.Base.buttonLeft = a;
					break;
				case Keyboard.S:
					game.entities.Base.buttonBack = a;
					break;
				case Keyboard.D:
					game.entities.Base.buttonRight = a;
					break;
				case Keyboard.UP:
					game.entities.Base.buttonRotateUp = a;
					break;
				case Keyboard.DOWN:
					game.entities.Base.buttonRotateDown = a;
					break;
				case Keyboard.NUMBER_1:
					Render.perspective = 0;
					break;
				case Keyboard.NUMBER_2:
					Render.perspective = 1;
					break;
			}
		}
		
	}

}