// ====================================================
// randori.utilities.GlobalUtilities
// ====================================================


$inherit = function(ce, ce2) {
if (typeof (Object.getOwnPropertyNames) == 'undefined') {

	for (var p in ce2.prototype)
		if (typeof (ce.prototype[p]) == 'undefined' || ce.prototype[p] == Object.prototype[p])
			ce.prototype[p] = ce2.prototype[p];
	for (var p in ce2)
		if (typeof (ce[p]) == 'undefined')
			ce[p] = ce2[p];
	ce.$baseCtor = ce2;

} else {

	var props = Object.getOwnPropertyNames(ce2.prototype);
	for (var i = 0; i < props.length; i++)
		if (typeof (Object.getOwnPropertyDescriptor(ce.prototype, props[i])) == 'undefined')
			Object.defineProperty(ce.prototype, props[i], Object.getOwnPropertyDescriptor(ce2.prototype, props[i]));

	for (var p in ce2)
		if (typeof (ce[p]) == 'undefined')
			ce[p] = ce2[p];
	ce.$baseCtor = ce2;

}

};



$createStaticDelegate = function(scope, func) {
	if (scope == null || func == null)
    return func;
var delegate = function () {
    return func.apply(scope, arguments);
};
delegate.func = func;
delegate.scope = scope;

return delegate;

	return null;
};

$createAnonDelegate = function(scope, func) {
    if (scope == null || func == null)
        return func;
    var delegate = function () {
        return func.apply(scope, arguments);
    };
    delegate.func = func;
    delegate.scope = scope;

    return delegate;

    return null;
};
