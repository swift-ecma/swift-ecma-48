# swift-ecma-48

Use this package when you need the escape-sequence text that moves the cursor, erases or scrolls the screen, switches to the alternate screen buffer, or sets text attributes and colours on a terminal. Every entry point returns a `Swift.String` to concatenate and write yourself; nothing here touches a terminal. Start from `ECMA_48.Cursor`, `ECMA_48.Screen` and `ECMA_48.SGR` (with `ECMA_48.SGR.Attribute` and `ECMA_48.SGR.Color`). `Terminal.Mode.Screen` is the same alternate-buffer switch, offered under the `Terminal` namespace.

## Laws

- A relative move or scroll by zero (`ECMA_48.Cursor.up`, `down`, `forward`, `back`, `nextLine`, `previousLine`, `ECMA_48.Screen.scrollUp`, `scrollDown`) emits the empty string, because terminals read a zero parameter as one. A count of one or more emits its sequence.
- Absolute positions (`ECMA_48.Cursor.column`, `ECMA_48.Cursor.position(row:column:)`) are passed through unchanged: they are 1-based as ECMA-48 defines them, and zero is emitted rather than elided.
- `ECMA_48.SGR.Color.Palette` cases 0 to 7 map to SGR 30 to 37 (foreground) and 40 to 47 (background); the bright cases 8 to 15 map to 90 to 97 and 100 to 107 via their `base` colour, not to bold.
- `Terminal.Mode.Screen.enable` and `Terminal.Mode.Screen.disable` equal `ECMA_48.Screen.alternateBufferEnter` and `ECMA_48.Screen.alternateBufferLeave`: DEC private mode 1049, differing only in the final byte.
- `ECMA_48.Cursor.hide`, `show` (DEC private mode 25), `save` and `restore` (`CSI s` / `CSI u`) are widely supported private sequences, not ECMA-48 controls.
