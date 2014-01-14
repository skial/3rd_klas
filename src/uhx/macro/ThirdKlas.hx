package uhx.macro;

import uhx.macro.KlasImpl;

/**
 * ...
 * @author Skial Bainn
 */
class ThirdKlas {

	private static function initialize() {
		try {
			if (!KlasImpl.setup) {
				KlasImpl.initalize();
			}
			
			#if hxparse
			KlasImpl.DEFAULTS.set('HxParseShim', HxParseShim.handler);
			#end
			
		} catch (e:Dynamic) {
			
		}
	}
	
}