package uhx.macro;

import haxe.macro.Expr;
import haxe.macro.Type;

/**
 * ...
 * @author Skial Bainn
 */
class HxParseShim {

	public static function handler(cls:ClassType, fields:Array<Field>):Array<Field> {
		for (field in fields) switch (field.kind) {
			case FVar(t, e):
				switch (e) {
					case macro @:rule $expr:
						trace( field.name );
						untyped hxparse.RuleBuilder.RuleBuilderImpl.transformRule( field, e, t, new Map<String,Expr>() );
						
					case _:
						
				}
				
			case _:
				
		}
		return fields;
	}
	
}