/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof behaviors == "undefined")
	var behaviors = {};

behaviors.EchoBehavior = function() {
	randori.behaviors.AbstractBehavior.call(this);
};

behaviors.EchoBehavior.prototype.onRegister = function() {
	this.decoratedElement.innerText = "Echo";
};

$inherit(behaviors.EchoBehavior, randori.behaviors.AbstractBehavior);

behaviors.EchoBehavior.className = "behaviors.EchoBehavior";

behaviors.EchoBehavior.getClassDependencies = function(t) {
	var p;
	return [];
};

behaviors.EchoBehavior.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 1:
			p = randori.behaviors.AbstractBehavior.injectionPoints(t);
			break;
		case 2:
			p = randori.behaviors.AbstractBehavior.injectionPoints(t);
			break;
		case 3:
			p = randori.behaviors.AbstractBehavior.injectionPoints(t);
			break;
		default:
			p = [];
			break;
	}
	return p;
};

