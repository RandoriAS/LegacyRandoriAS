/** Compiled by the RandoriCompiler v0.01 on Mon Mar 18 14:42:06 CDT 2013 */

if (typeof services == "undefined")
	var services = {};

services.TargetsService = function(xmlHttpRequest, config, targets) {
	this.path = null;
	randori.service.AbstractService.call(this, xmlHttpRequest);
	this.config = config;
	this.targets = targets;
	this.path = "assets\/data\/targets.txt";
};

services.TargetsService.prototype.get = function() {
	var promise = this.sendRequest("GET", this.path);
	var parserPromise = promise.then(this.targets.parseResult);
	return parserPromise;
};

$inherit(services.TargetsService, randori.service.AbstractService);

services.TargetsService.className = "services.TargetsService";

services.TargetsService.getClassDependencies = function(t) {
	var p;
	return [];
};

services.TargetsService.injectionPoints = function(t) {
	var p;
	switch (t) {
		case 0:
			p = [];
			p.push({n:'xmlHttpRequest', t:'XMLHttpRequest'});
			p.push({n:'config', t:'randori.service.ServiceConfig'});
			p.push({n:'targets', t:'services.parser.TargetsParser'});
			break;
		case 1:
			p = randori.service.AbstractService.injectionPoints(t);
			break;
		case 2:
			p = randori.service.AbstractService.injectionPoints(t);
			break;
		case 3:
			p = randori.service.AbstractService.injectionPoints(t);
			break;
		default:
			p = [];
			break;
	}
	return p;
};

