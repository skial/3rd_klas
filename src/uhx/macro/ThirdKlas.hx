package uhx.macro;

import uhx.macro.KlasImp;

/**
 * ...
 * @author Skial Bainn
 */
class ThirdKlas {

	private static function initialize() {
		try {
			KlasImp.initialize();
			#if hxparse
			KlasImp.DEFAULTS.set('HxParseShim', HxParseShim.handler);
			#end
			
		} catch (e:Dynamic) {
			
		}
	}
	
}