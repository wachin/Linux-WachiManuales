var innity_zone = 0;
function innity_premiumZone(zone, settings) {
    innity_zone = zone;
	var version = 1;
	var init = typeof settings.init == "boolean" ? settings.init : true;
	// Default syndication URL
	this.syndURL = this.get_protocol() + "//ps.innity.com/zone/?";
	// Key value pairs
	this.keys = [];
	this.syndURL += "cb=" + new Date().getTime();
	this.append_url("ver", version);
	this.append_url("zone", zone);
	if (document["sync" + zone]) {
		this.append_url("sync", document["sync" + zone]);
	}
	// Get first party cookie
	if (this.read_cookie("innity.iBCP")) {
		this.append_url("bcp", this.read_cookie("innity.iBCP"));
	}
	init && (this.write());
}
innity_premiumZone.prototype.read_cookie = function (param) {
	return (document.cookie.match('(^|; )' + param + '=([^;]*)') || 0)[2];
}
innity_premiumZone.prototype.set_cookie = function (param, value) {
	var d = document.domain;
	if (d != "") {
		var p = d.split(".");
		var i = 0;
		var e = new Date();
		e.setTime(e.getTime() + 365 * 24 * 60 * 60 * 1000);
		value = encodeURIComponent(value);
		while (i < (p.length-1) && document.cookie.indexOf(param + "=" + param) == -1) {
			d = p.slice(-1-(++i)).join(".");
			document.cookie = param + "=" + value +";expires=" + e.toUTCString() + ";domain=" + d + ";path=/";
		}
		document.cookie = param + "=" + value +";expires=" + e.toUTCString() + ";domain=" + d + ";path=/";
	}
}
innity_premiumZone.prototype.append_url = function (param, value) {
	value && (this.syndURL += "&" + param + "=" + value);
}
innity_premiumZone.prototype.get_protocol = function () {
	return location.protocol.indexOf("https") > -1 ? "https:" : "http:";
}
innity_premiumZone.prototype.handle_targeting = function () {
	if (this.keys.length > 0) {
		this.append_url("ext", encodeURIComponent(this.keys.join("~")));
	}
}
innity_premiumZone.prototype.set_targeting = function (key, value) {
	if (value) {
		this.keys.push(key + "=" + value);
	}
}
innity_premiumZone.prototype.write = function() {
	this.handle_targeting();
	document.write('<scr' + 'ipt type="text/javascr' + 'ipt" src="' + this.syndURL + '"></scr' + 'ipt>');
}