# TODO

- Experiment with Notifier
  - Receive changes as they are made
  - change type
    - add
    - modify
      - save previous item state as a JavaScript object?
    - delete
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

