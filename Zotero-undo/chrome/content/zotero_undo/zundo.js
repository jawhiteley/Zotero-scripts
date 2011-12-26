/* Zotero-Undo: add basic undo/redo commands to Zotero
 * Jonathan Whiteley    jonathan [dot] whiteley [at] mail [dot] mcgill [dot] ca
 * 
 * This plugin is based largely on the 'Hello World' sample plugin, which I used as a starting point,
 *   and modified to provide the undo commands.
 * The sample plugin already shows how to do the hard part (for me): 
 *   add an event listener, and retrieve changes as they are made.
 * https://www.zotero.org/support/dev/sample_plugin
 * https://github.com/zotero/zotero-hello-world
 *
 * This is my first Zotero / Firefox plugin.
 */

Zotero.ZoteroUndo = {
	DB: null,
	
	init: function () {
		// Connect to (and create, if necessary) zundo.sqlite in the Zotero directory
        /*jaw: I'd rather avoid dealing with the DB directly, if I can.
		this.DB = new Zotero.DBConnection('zundo');
		
		if (!this.DB.tableExists('changes')) {
			this.DB.query("CREATE TABLE changes (num INT)");
			this.DB.query("INSERT INTO changes VALUES (0)");
		}
        */
		
		// Register the callback in Zotero as an item observer
		var notifierID = Zotero.Notifier.registerObserver(this.notifierCallback, ['item']);
		
		// Unregister callback when the window closes (important to avoid a memory leak)
		window.addEventListener('unload', function(e) {
				Zotero.Notifier.unregisterObserver(notifierID);
		}, false);
	},
	
	insertHello: function() {
		var data = {
			title: "Zotero",
			company: "Center for History and New Media",
			creators: [
				['Dan', 'Stillman', 'programmer'],
				['Simon', 'Kornblith', 'programmer']
			],
			version: '1.0.1',
			company: 'Center for History and New Media',
			place: 'Fairfax, VA',
			url: 'http://www.zotero.org'
		};
		Zotero.Items.add('computerProgram', data); // returns a Zotero.Item instance
	},
	
	// Callback implementing the notify() method to pass to the Notifier
	notifierCallback: {
		notify: function(event, type, ids, extraData) {
			if (event == 'add' || event == 'modify' || event == 'delete') {
				// Increment a counter every time an item is changed
				// Zotero.HelloWorldZotero.DB.query("UPDATE changes SET num = num + 1");
                /*
                var newItems = Zotero.Items.get(ids);
                var oldItems = extraData;
				*/
                
				if (event != 'delete') {
					// Retrieve the added/modified items as Item objects
					var items = Zotero.Items.get(ids);
				}
				else {
					var items = extraData;
				}
                // items = oldItems;
				
				// Loop through array of items and grab titles
				var titles = [];
				for each(var item in items) {
					// For deleted items, get title from passed data
					if (event == 'delete') {
						titles.push(item.old.title ? item.old.title : '[No title]');
					}
					else {
						titles.push(item.getField('title'));
					}
				}

                // collect old items from `extraData`? X
                // What is in `extraData`, anyway??
                var oldItems = [];
				for each(var item in extraData) {
                    // item seems to be the id of the modified item?
                    for (var ppty in item) {
                      oldItems.push(ppty);  // item undefined?
                    }
				}
				
				if (!titles.length) {
					return;
				}
				
				// Get the localized string for the notification message and
				// append the titles of the changed items
				var stringName = 'notification.item' + (titles.length==1 ? '' : 's');
				switch (event) {
					case 'add':
						stringName += "Added";
						break;
						
					case 'modify':
						stringName += "Modified";
						break;
						
					case 'delete':
						stringName += "Deleted";
						break;
				}
				
				var str = document.getElementById('undo-zotero-strings').
					getFormattedString(stringName, [titles.length]) + ":\n\n" +
					titles.join("\n");
			}
			
			alert(str + "\n\n" + event + "\n" + type + "\n" + ids + "\n" + extraData + "\n" + oldItems);
		}
	}
};

// Initialize the utility
window.addEventListener('load', function(e) { Zotero.ZoteroUndo.init(); }, false);
