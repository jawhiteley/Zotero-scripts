# ZOTERO UNDO Plugin

Simple plugin to track changes as they are made in Zotero, and allow "Undo" & "Redo" commands for common tasks.
Basic goal: track changes to individual records and provide undo command to reverse them. 

Based on the [Hello World](https://github.com/zotero/zotero-hello-world) [sample plugin](https://www.zotero.org/support/dev/sample_plugin) (zotero-zotero-hello-world-389f862).
See also: 
- <https://github.com/singingfish/zotero-hello-world-1>
- <https://github.com/singingfish/Zotero-Hello-World>

* http://forums.zotero.org/discussion/21071/more-undo-functionality/
  - Difficult to add to a data model not designed for it :(


## Simple approach?  Is this even feasible?
+ Event listener that watches for an item being modified
  + <https://www.zotero.org/support/dev/sample_plugin>
+ Records a history of changes
  + save item states before & after each change?  
  + As javascript objects?  or in sqlite database?
  + As a 'stack' of changes?
  + change history is reset
    - on save?
    + when the plugin / Zotero starts
+ Undo command: 'pop' top change from stack and recover state prior to previous change
+ Redo command: 'pop' changes back onto stack in reverse order (re-apply tracked changes).
- Change History: list of tracked changes that can be 'undone'/'redone'



# TODO

- Test installation
  - <https://developer.mozilla.org/en/Building_an_Extension>
  - Testing: copy `zotero_undo@jonathanwhiteley.com` to the `extensions` folder in Firefox Profile
- Experiment with Notifier
  - Receive changes as they are made
  - change type
    - add
    - modify
      - save previous item state as a JavaScript object?
    - delete
  - debugging methods
- set-up Undo 'Stack'
  - Array of changes in order, starting with most recent
  - Each change is a JSON object?
    - type of change
    - item ids
    - backup copy of items prior to change
- set-up Redo 'Stack'
  - similar to Undo stack; as items are 'undone', they are moved to the Redo Stack
  - "Final staus" can be recovered by re-applying changes in the redo stack in order (starting with 1st item)
  - Wiped when notification of a new change is received (Redo stack now obsolete)
- Interface elements
  - Toolbar Button
  - (Context) menu item
  - keyboard shortcut?
  - command to wipe 'Change History' (Undo+Redo stacks) & reclaim memory, if necessary?

