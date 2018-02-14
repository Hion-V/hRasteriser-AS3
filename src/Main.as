package
{
	import logic.Vec3d;
	import logic.Input;
	import logic.Point3D;
	import game.Game;
	import game.Screen;
	import game.entities.Base;
	import game.entities.Clock;
	import game.entities.Entity;
	import game.entities.WorldSpawn;
	import game.entities.hud.ButtonPressDisplay;
	import game.entities.hud.FrameRateDisplay;
	import game.entities.hud.HudElement;
	import com.adobe.tvsdk.mediacore.events.NotificationEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			handleEvents();
			setupRenderer();
			constructWorld();
		}
		private function setupRenderer():void
		{
			Render.stage = stage;
			Render.sprite3 = Render.sprite2 = Render.sprite1 = this;
			Render.graphics = graphics;
			Render.drawHud();
		}
		public function handleEvents():void
		{
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, logic.Input.onKey);
			stage.addEventListener(KeyboardEvent.KEY_UP, logic.Input.onKey);
		}
		public function constructWorld():void
		{
			var clock:Clock = new Clock();
		}
		public function onEnterFrame(e:Event):void
		{
			game.entities.Entity.doThink();
			Render.renderWorld();
		}
	}
}