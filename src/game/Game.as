package game 
{
	import game.entities.Player;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Game 
	{
		public static var player:game.entities.Player = new game.entities.Player([20, 50, -50], [0, 0]);
		public static var fovVert:int = 74;
		public static var fovHor:int = 90;
		public static var screenWidth:int = 800
		public static var screenHeight:int = 600
		public function Game() 
		{
			
		}
		
	}

}