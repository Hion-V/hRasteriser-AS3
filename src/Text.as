package 
{
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Text 
	{
		public var letterWidth:int = 4
		public var letterHeight:int = 8
		public var textArray:Array = [];
		public var outputBitmap:BitmapData;
		public var a:Array = 	[0, 1, 1, 0,
								 1, 1, 1, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 1, 0, 0, 1];
		public var b:Array =	[1, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 1, 1, 1, 0];
		public var c:Array =	[0, 1, 1, 1,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0, 
								 0, 1, 1, 1];
		public var d:Array =	[1, 1, 1, 0,
								 1, 0, 1, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 1, 1, 
								 1, 1, 1, 0];
		public var e:Array =	[1, 1, 1, 1,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 1, 1, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0, 
								 1, 1, 1, 1];
		public var f:Array =	[1, 1, 1, 1,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 1, 1, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0, 
								 1, 0, 0, 0];
		public var g:Array =	[0, 1, 1, 1,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 1, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var h:Array =	[1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 1, 0, 0, 1];
		public var i:Array =	[1, 1, 1, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 1, 1, 1];
		public var j:Array =	[1, 1, 1, 1,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 0, 1, 0, 
								 1, 1, 0, 0];
		public var k:Array =	[1, 0, 0, 1,
								 1, 0, 1, 0,
								 1, 0, 1, 0,
								 1, 1, 0, 0,
								 1, 1, 0, 0,
								 1, 0, 1, 0,
								 1, 0, 1, 0, 
								 1, 0, 0, 1];
		public var l:Array =	[1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0, 
								 1, 1, 1, 1];
		public var m:Array =	[1, 0, 0, 0, 1,
								 1, 1, 0, 1, 1,
								 1, 1, 0, 1, 1,
								 1, 0, 1, 0, 1,
								 1, 0, 1, 0, 1,
								 1, 0, 0, 0, 1,
								 1, 0, 0, 0, 1, 
								 1, 0, 0, 0, 1];
		public var n:Array =	[1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 0, 1,
								 1, 1, 0, 1,
								 1, 0, 1, 1,
								 1, 0, 1, 1,
								 1, 0, 0, 1, 
								 1, 0, 0, 1];
		public var o:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var p:Array =	[1, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 0, 0, 0, 
								 1, 0, 0, 0];
		public var q:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 1, 1, 
								 0, 1, 1, 1];
		public var r:Array =	[1, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 0,
								 1, 0, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 1, 0, 0, 1];
		public var s:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 0,
								 0, 1, 0, 0,
								 0, 0, 1, 0,
								 0, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var t:Array =	[1, 1, 1, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0];
		public var u:Array =	[1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var v:Array =	[1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 1,
								 0, 1, 1, 0, 
								 0, 1, 1, 0];
		public var w:Array =	[1, 0, 0, 0, 1, 
								 1, 0, 0, 0, 1, 
								 1, 0, 0, 0, 1, 
								 1, 0, 1, 0, 1, 
								 1, 0, 1, 0, 1, 
								 1, 1, 0, 1, 1, 
								 1, 1, 0, 1, 1,  
								 1, 0, 0, 0, 1,];
		public var x:Array =	[1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 0, 1, 1, 0,
								 0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 1, 0, 0, 1];
		public var y:Array =	[1, 0, 1, 
								 1, 0, 1, 
								 1, 0, 1, 
								 1, 0, 1, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0,  
								 0, 1, 0];
		public var z:Array =	[1, 1, 1, 1,
								 0, 0, 0, 1,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 1, 0, 0,
								 0, 1, 0, 0,
								 1, 0, 0, 0, 
								 1, 1, 1, 1];
		public var one:Array =	[0, 1, 0, 
								 1, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0, 
								 0, 1, 0,  
								 1, 1, 1];
		public var two:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 1, 0, 0,
								 0, 1, 0, 0, 
								 1, 1, 1, 1];
		public var three:Array =[0, 1, 1, 0,
								 1, 0, 0, 1,
								 0, 0, 0, 1,
								 0, 1, 1, 0,
								 0, 0, 0, 1,
								 0, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var four:Array =	[0, 0, 0, 1,
								 0, 0, 1, 1,
								 0, 1, 0, 1,
								 1, 0, 0, 1,
								 1, 1, 1, 1,
								 0, 0, 0, 1,
								 0, 0, 0, 1, 
								 0, 0, 0, 1];		
		public var five:Array =	[1, 1, 1, 1,
								 1, 0, 0, 0,
								 1, 0, 0, 0,
								 1, 1, 1, 0,
								 0, 0, 0, 1,
								 0, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];	
		public var six:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 0,
								 1, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var seven:Array =[1, 1, 1, 1,
								 0, 0, 0, 1,
								 0, 0, 0, 1,
								 0, 0, 1, 0,
								 0, 0, 1, 0,
								 0, 1, 0, 0,
								 0, 1, 0, 0, 
								 0, 1, 0, 0];
		public var eight:Array =[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var nine:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 0, 1, 1, 1,
								 0, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var zero:Array =	[0, 1, 1, 0,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1,
								 1, 0, 0, 1, 
								 0, 1, 1, 0];
		public var comma:Array =[0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 1, 1, 0,
								 0, 1, 1, 0, 
								 0, 0, 1, 0];
		public var empty:Array =[0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0,
								 0, 0, 0, 0, 
								 0, 0, 0, 0];
		public function Text() 
		{
			
		}
		public function textToBitmap(input:String):BitmapData
		{
			while (textArray.length > 0){
				textArray.pop();
			}
			for (var i:int = 0; i < input.length; i++){
				drawLetter(input.substring(i, i+1));
			}
			outputBitmap = new BitmapData(5 * (textArray.length), 8, true, 0x00000000);
			outputBitmap.lock();
			var width:int = 4;
			var height:int = 8;
			var x:int = 0;
			var y:int = 0;
			var k:int = 0;
			var xOffset:int = 0;
			for (var j:int = 0; j < textArray.length; j++){
				x = 0
				y = 0
				k = 0
				if (j > 0){
					xOffset += 1+textArray[j-1].length / 8;
				}
				width = textArray[j].length / 8;
				while (k < width * 8){
					x = k % width
					y = k / width;
					if(textArray[j][k] == 1){
						outputBitmap.setPixel32(xOffset + x, k / width, 0xff000000);
					}
					k++;
				}
			}
			outputBitmap.unlock();
			return outputBitmap;
		}
		public function drawLetter(letterToDraw:String):void
		{
			letterToDraw.toLowerCase();
			var selectedArray:Array = selectLetter(letterToDraw);
			textArray.push(selectedArray);
		}
		public function selectLetter(letterToSelect:String):Array
		{
			switch(letterToSelect){
				case "a":
					return a;
					break;
				case "b":
					return b;
					break;
				case "c":
					return c;
					break;
				case "d":
					return d;
					break;
				case "e":
					return e;
					break;
				case "f":
					return f;
					break;
				case "g":
					return g;
					break;
				case "h":
					return h;
					break;
				case "i":
					return i;
					break;
				case "j":
					return j;
					break;
				case "k":
					return k;
					break;
				case "l":
					return l;
					break;
				case "m":
					return m;
					break;
				case "n":
					return n;
					break;
				case "o":
					return o;
					break;
				case "p":
					return p;
					break;
				case "q":
					return q;
					break;
				case "r":
					return r;
					break;
				case "s":
					return s;
					break;
				case "t":
					return t;
					break;
				case "u":
					return u;
					break;
				case "v":
					return v;
					break;
				case "w":
					return w;
					break;
				case "x":
					return x;
					break;
				case "y":
					return y;
					break;
				case "1":
					return one;
					break;
				case "2":
					return two;
					break;
				case "3":
					return three;
					break;
				case "4":
					return four;
					break;
				case "5":
					return five;
					break;
				case "6":
					return six;
					break;
				case "7":
					return seven;
					break;
				case "8":
					return eight;
					break;
				case "9":
					return nine;
					break;
				case "0":
					return zero;
					break;
			}
			return empty;
		}
	}

}