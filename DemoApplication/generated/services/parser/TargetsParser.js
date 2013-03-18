/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof services == "undefined")
	var services = {};
if (typeof services.parser == "undefined")
	services.parser = {};

services.parser.TargetsParser = function() {
	randori.service.parser.AbstractParser.call(this);
};

services.parser.TargetsParser.prototype.parseResult = function(result) {
	var json = JSON.parse(result);
	return json;
};

$inherit(services.parser.TargetsParser, randori.service.parser.AbstractParser);

services.parser.TargetsParser.className = "services.parser.TargetsParser";

services.parser.TargetsParser.getClassDependencies = function(t) {
	var p;
	return [];
};

services.parser.TargetsParser.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 1:
			p = randori.service.parser.AbstractParser.injectionPoints(t);
			break;
		case 2:
			p = randori.service.parser.AbstractParser.injectionPoints(t);
			break;
		case 3:
			p = randori.service.parser.AbstractParser.injectionPoints(t);
			break;
		default:
			p = [];
			break;
	}
	return p;
};

