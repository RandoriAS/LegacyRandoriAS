/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof mediators == "undefined")
	var mediators = {};

mediators.IndexMediator = function() {
	this.viewStack = null;
	this.menu = null;
	randori.behaviors.AbstractMediator.call(this);
};

mediators.IndexMediator.prototype.onRegister = function() {
	var menuItems = [{name:"Targets", url:"views\/targets.html"}, {name:"Labs", url:"views\/labs.html"}, {name:"Intel", url:"views\/intel.html"}];
	this.menu.menuItemSelected.add($createStaticDelegate(this, this.menuItemSelected));
	this.menu.set_data(menuItems);
};

mediators.IndexMediator.prototype.menuItemSelected = function(menuData) {
	this.viewStack.popView();
	var promise = this.viewStack.pushView(menuData.url);
	promise.then(function(result) {
	});
};

$inherit(mediators.IndexMediator, randori.behaviors.AbstractMediator);

mediators.IndexMediator.className = "mediators.IndexMediator";

mediators.IndexMediator.getClassDependencies = function(t) {
	var p;
	return [];
};

mediators.IndexMediator.injectionPoints = function(t) {
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
			p.push({n:'viewStack', t:'randori.behaviors.ViewStack'});
			p.push({n:'menu', t:'behaviors.VerticalTabs'});
			break;
		default:
			p = [];
			break;
	}
	return p;
};

