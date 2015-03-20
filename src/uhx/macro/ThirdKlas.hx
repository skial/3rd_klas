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
			KlasImp.allMetadata.add( HxParseShim.handler );
			#end
			
		} catch (e:Dynamic) {
			
		}
	}
	
}