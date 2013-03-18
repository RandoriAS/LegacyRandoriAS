/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof mediators == "undefined")
	var mediators = {};

mediators.LabsMediator = function() {
	this.message = null;
	randori.behaviors.AbstractMediator.call(this);
};

mediators.LabsMediator.prototype.onRegister = function() {
	this.message.text("Labs Mediator Loaded and Registered");
};

$inherit(mediators.LabsMediator, randori.behaviors.AbstractMediator);

mediators.LabsMediator.className = "mediators.LabsMediator";

mediators.LabsMediator.getClassDependencies = function(t) {
	var p;
	return [];
};

mediators.LabsMediator.injectionPoints = function(t) {
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

