/**
 * @author mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima
 */
(function($){

$.bind = function(object, method){
	var args = Array.prototype.slice.call(arguments, 2);
	if(args.length){
		return function() {
			var args2 = [this].concat(args, $.makeArray( arguments ));
			return method.apply(object, args2);
		};
	} else {
		return function() {
			var args2 = [this].concat($.makeArray( arguments ));
			return method.apply(object, args2);
		};
	}
};
	
})(jQuery);
