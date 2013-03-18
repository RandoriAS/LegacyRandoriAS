/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof mediators == "undefined")
	var mediators = {};

mediators.IntelMediator = function() {
	this.message = null;
	randori.behaviors.AbstractMediator.call(this);
};

mediators.IntelMediator.prototype.onRegister = function() {
	this.message.text("Intel Mediator Loaded and Registered");
};

$inherit(mediators.IntelMediator, randori.behaviors.AbstractMediator);

mediators.IntelMediator.className = "mediators.IntelMediator";

mediators.IntelMediator.getClassDependencies = function(t) {
	var p;
	return [];
};

mediators.IntelMediator.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 1:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			break;
		case 2:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			break;
		case 3:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			p.push({n:'message'});
			break;
		default:
			p = [];
			break;
	}
	return p;
};

