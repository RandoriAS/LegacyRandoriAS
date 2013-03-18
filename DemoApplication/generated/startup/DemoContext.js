/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof startup == "undefined")
	var startup = {};

startup.DemoContext = function() {
	guice.GuiceModule.call(this);
};

startup.DemoContext.prototype.configure = function(binder) {
};

$inherit(startup.DemoContext, guice.GuiceModule);

startup.DemoContext.className = "startup.DemoContext";

startup.DemoContext.getClassDependencies = function(t) {
	var p;
	return [];
};

startup.DemoContext.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 1:
			p = guice.GuiceModule.injectionPoints(t);
			break;
		case 2:
			p = guice.GuiceModule.injectionPoints(t);
			break;
		case 3:
			p = guice.GuiceModule.injectionPoints(t);
			break;
		default:
			p = [];
			break;
	}
	return p;
};

