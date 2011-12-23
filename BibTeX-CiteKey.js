{
        "translatorID": "e35ec5c9-3166-471d-9267-1988fea4c351",
        "label": "BibTeX-CiteKey",
        "creator": "Jonathan Whiteley, based on work by Simon Kornblith and Richard Karnesky that was tweaked by Andrew Leifer",
        "target": "bib",
        "minVersion": "2.1.9",
        "maxVersion": "",
        "priority": 500,
        "displayOptions": {
                "exportCharset": "UTF-8",
                "exportNotes": false,
                "exportFileData": false
        },
        "inRepository": false,
        "translatorType": 3,
        "lastUpdated": "2011-12-23 12:30:00"
}

/* Quick Copy or Drag & Drop BibTeX-style cite commands, such as "\cite{key}" from Zotero

    Copyright (C) 2011  Jonathan Whiteley   jonathan [dot] whiteley [at] mail [dot] mcgill [dot] ca

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

 * This file is a wrapper around a modified version of the "BibTex" translator from Zotero 2.1.10, 
 * which uses available methods from that translator for extracting / generating a BibTeX-compatible cite key.
 * This Translator uses a greatly simplified doExport() function to output only "\cite{key}" on export.
 * By setting "Quick Copy" to use this translator (in Zotero 'Export' Preferences), you can 
 * Drag & Drop citations in the form of a Bibtex "\cite{key}" from Zotero.
 * There are a few variables near the top that allow simple control over the formatting of this exported content,
 * Such as which command to use (if any), and what to put between multiple items.
 *
 * Original tweaks by:  Andrew Leifer               leifer ( at ) fas ( dot ) harvard (dot) edu
 * Inspired by similar work by: Avram Lyon          ajlyon [at] gmail.com     
 */
/* TODO
 * Can Zotero search dynamically for the preferred "bib" translator (according to priority)?
 * - e.g. something like .getTranslators() method
 *   http://www.zotero.org/support/dev/translators/coding#calling_other_translators
 */

var citeCommand = "\\citep"; //jaw -- specify preferred cite command (escape the backslash).
var keySep      = ", ";      //jaw -- used to separate multiple keys within the command above.
/*jaw  
 * Multiple keys will be separated by `keySep`: default is a comma + space ", "
 * The cite key(s) will be wrapped in curly braces {}, with `citeCommand` appended to the front.
 * Leave `citeCommand` blank ("") if you just want the naked cite key(s) on Quick Copy.
 */

var bibtexTranslator = Zotero.loadTranslator("import");
bibtexTranslator.setTranslator("afea7040-40d1-40cc-915a-7b4e308d81d6"); // This is my modified version.  
// The GUID for the 'official' BibTeX translator included in Zotero 2.1.10 is:  9cb70025-a888-4a29-a210-93ec52da40d4
// The GUID for my modified version of the BibTeX translator is:                afea7040-40d1-40cc-915a-7b4e308d81d6
// NB: the BibTeX translator included in Zotero does not have an export{} property of objects available to other translators.  
// Mine does, although this script seems to work fine if importing the built-in BibTeX translator anyway.  *shrug*

function doExport() {
	var first = true;
	var citekey = "";  //jaw: initialize here to keep it accessible outside the getTranslatorObject() callback
	var citekeys = new Object();
	var item;
	if (citeCommand != "") Zotero.write(citeCommand+"{");  // modified to use custom cite command
	while(item = Zotero.nextItem()) {
		// get citation key, using imported BibTeX translator
		bibtexTranslator.getTranslatorObject( function (bibtex) {
			citekey = bibtex.buildCiteKey(item, citekeys);
		})
		// insert key separator before the next item	
		if (first == false) Zotero.write(keySep);
		// write citation key
		Zotero.write(citekey);
		first = false;
	}
	if (citeCommand != "") Zotero.write("}");  // close custom cite command
}
