package uhx.macro;

import haxe.macro.Expr;
import haxe.macro.Type;

using Lambda;
using haxe.macro.ExprTools;

/**
 * ...
 * @author Skial Bainn
 */
class HxParseShim {

	public static function handler(cls:ClassType, fields:Array<Field>):Array<Field> {
		var map = new Map<String, Expr>();
		
		for (field in fields) if (field.access.exists(function(a) return a == AStatic)) switch (field.kind) {
			case FVar(_, e) if (e != null): map.set( field.name, e );
			case _:
		}
		
		for (field in fields) if (field.access.exists(function(a) return a == AStatic)) switch (field.kind) {
			case FVar(t, e) if (e != null):
				switch (e) {
					case macro @:rule $expr:
						untyped hxparse.RuleBuilder.RuleBuilderImpl.transformRule( field, expr, t, map );
					case _:
						
				}
				
			case _:
				
		}
		return fields;
	}
	
}