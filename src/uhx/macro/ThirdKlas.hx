package uhx.macro;

import uhx.macro.KlasImp;

/**
 * ...
 * @author Skial Bainn
 */
class ThirdKlas {

	private static function initialize() {
		try {
			if (!KlasImp.setup) {
				KlasImp.initalize();
			}
			
			#if hxparse
			KlasImp.DEFAULTS.set('HxParseShim', HxParseShim.handler);
			#end
			
		} catch (e:Dynamic) {
			
		}
	}
	
}