
# Undo Plugin?

* Plugin to add undo/redo functionality to Zotero
* http://forums.zotero.org/discussion/21071/more-undo-functionality/
  - Difficult to add to a data model not designed for it :(

Basic goal: track changes to individual records and provide undo command to reverse them. 

Simple approach?  Is this even feasible?
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
