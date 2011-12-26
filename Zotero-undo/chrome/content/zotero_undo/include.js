// Only create main object once
if (!Zotero.ZoteroUndo) {
	const loader = Components.classes["@mozilla.org/moz/jssubscript-loader;1"]
					.getService(Components.interfaces.mozIJSSubScriptLoader);
	loader.loadSubScript("chrome://zotero_undo/content/zundo.js");
}
