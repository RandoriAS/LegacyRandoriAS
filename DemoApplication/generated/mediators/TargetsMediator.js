/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof mediators == "undefined")
	var mediators = {};

mediators.TargetsMediator = function() {
	this.targetList = null;
	this.service = null;
	randori.behaviors.AbstractMediator.call(this);
};

mediators.TargetsMediator.prototype.onRegister = function() {
	this.service.get().then($createStaticDelegate(this, this.handleResult));
};

mediators.TargetsMediator.prototype.handleResult = function(result) {
	this.targetList.set_data(result);
};

$inherit(mediators.TargetsMediator, randori.behaviors.AbstractMediator);

mediators.TargetsMediator.className = "mediators.TargetsMediator";

mediators.TargetsMediator.getClassDependencies = function(t) {
	var p;
	return [];
};

mediators.TargetsMediator.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 1:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			p.push({n:'service', t:'services.TargetsService', r:0, v:null});
			break;
		case 2:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			break;
		case 3:
			p = randori.behaviors.AbstractMediator.injectionPoints(t);
			p.push({n:'targetList', t:'randori.behaviors.SimpleList'});
			break;
		default:
			p = [];
			break;
	}
	return p;
};

