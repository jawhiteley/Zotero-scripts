# ZOTERO UNDO Plugin

Simple plugin to track changes as they are made in Zotero, and allow "Undo" & "Redo" commands for common tasks.

Based on the [Hello World](https://github.com/zotero/zotero-hello-world) [sample plugin](https://www.zotero.org/support/dev/sample_plugin) (zotero-zotero-hello-world-389f862).
See also: 
- <https://github.com/singingfish/zotero-hello-world-1>
- <https://github.com/singingfish/Zotero-Hello-World>

# TODO

- Test installation
  - <https://developer.mozilla.org/en/Building_an_Extension>
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

