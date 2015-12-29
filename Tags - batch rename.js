/* 
 * Renames tags (for ALL entries with that tag) in Zotero based on regex substitution.
 * For batch renaming of tags.
 */

// regex cannot be enclosed in quotes.
var oldpattern = /\.$/
var newval = ''

var ZoteroPane = Components.classes["@mozilla.org/appshell/window-mediator;1"] 
        .getService(Components.interfaces.nsIWindowMediator)
        .getMostRecentWindow("navigator:browser").ZoteroPane;

Zotero.Tags.match = function (pattern) {
  // regex matching on tag names
  var all_tags = Zotero.Tags.search();
  var found_tags = [];
  for (var id in all_tags) {
    tag_name = all_tags[id].name;
    if ( tag_name.match(oldpattern) ) {
      found_tags.push(tag_name);
    }
  }
  return found_tags;    // should probably return IDs or something; compare with Zotero.Tags.search()
  // https://github.com/zotero/zotero/blob/4dd56eadfca9b89e1728661776407337bb823ebd/chrome/content/zotero/xpcom/data/tags.js#L266
}

var found_tags = Zotero.Tags.match(oldpattern);
// alert(found_tags);

for (var tag of found_tags) {  // iterate over array: experimental. Use numeric index for compatibility with older browsers.
  // alert(tag);
  tagType = 0;  // custom tags: tags generated automatically by Zotero are type '1'
  tagID = Zotero.Tags.getID(tag, tagType);  // libraryID is optional; defaults to the current window, I think.
  // alert(Zotero.Tags.getName(tagID));
  tagIDs = Zotero.Tags.getIDs(tag);  // libraryID is optional?
  // alert(Zotero.Tags.getName(tagIDs));

  var new_name = tag.replace(oldpattern, newval);
  alert("      " + tag + "\n=>  " + new_name);
  Zotero.Tags.rename(tagIDs, new_name);  // This will rename the tag for ALL entries.
  // Does not always work; particularly if a tag with the new name already exists.
}

