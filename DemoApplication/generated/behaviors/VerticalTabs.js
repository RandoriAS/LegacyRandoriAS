/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof behaviors == "undefined")
	var behaviors = {};

behaviors.VerticalTabs = function(walker) {
	this.menuItemSelected = null;
	randori.behaviors.List.call(this, walker);
	this.menuItemSelected = new randori.signal.SimpleSignal();
};

behaviors.VerticalTabs.prototype.renderList = function() {
	randori.behaviors.List.prototype.renderList.call(this);
	var children = this.decoratedNode.children();
	var first = children.eq(0);
	var last = children.eq(children.length - 1);
	first.addClass("first");
	last.addClass("last");
};

behaviors.VerticalTabs.prototype.onRegister = function() {
	this.listChanged.add($createStaticDelegate(this, this.listChangedHandler));
	randori.behaviors.List.prototype.onRegister.call(this);
};

behaviors.VerticalTabs.prototype.listChangedHandler = function(index, data) {
	if (data != null) {
		var menuItem = {name:data["name"], url:data["url"]};
		this.menuItemSelected.dispatch(menuItem);
	}
};

$inherit(behaviors.VerticalTabs, randori.behaviors.List);

behaviors.VerticalTabs.className = "behaviors.VerticalTabs";

behaviors.VerticalTabs.getClassDependencies = function(t) {
	var p;
	p = [];
	p.push('randori.signal.SimpleSignal');
	return p;
};

behaviors.VerticalTabs.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 0:
			p = [];
			p.push({n:'walker', t:'randori.dom.DomWalker'});
			break;
		case 1:
			p = randori.behaviors.List.injectionPoints(t);
			break;
		case 2:
			p = randori.behaviors.List.injectionPoints(t);
			break;
		case 3:
			p = randori.behaviors.List.injectionPoints(t);
			break;
		default:
			p = [];
			break;
	}
	return p;
};

