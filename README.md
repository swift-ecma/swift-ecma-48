# swift-ecma-48

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Generates ECMA-48 (ANSI X3.64 / ISO/IEC 6429) control sequences for terminal text styling, cursor movement, and screen control.

---

## Key Features

- **Select Graphic Rendition** — text attributes (`bold`, `dim`, `italic`, `underline`, `blink`, `reverse`, `strikethrough`, and their explicit "off" codes) via `ECMA_48.SGR.Attribute`.
- **Three color depths** — 4-bit 16-color palette, 8-bit 256-color extended, and 24-bit RGB true color via `ECMA_48.SGR.Color`, each resolvable as a foreground or background sequence.
- **Cursor control** — relative movement, absolute positioning, save/restore, and show/hide via `ECMA_48.Cursor`.
- **Screen control** — erase display, erase line, scroll, and alternate-buffer entry/exit via `ECMA_48.Screen`.
- **Sequence introducers** — `csi`, `osc`, and `st` constants for composing sequences the typed API does not cover.
- **Plain `String` output** — every helper returns a ready-to-print `String`, with no Foundation dependency.

---

## Quick Start

```swift
import ECMA_48

// Style text with an SGR attribute and a palette color.
let bold = ECMA_48.SGR.Attribute.bold.sequence
let red = ECMA_48.SGR.Color.palette(.red).foreground
let reset = ECMA_48.SGR.Attribute.reset.sequence
print("\(bold)\(red)Error!\(reset)")

// 24-bit RGB true color.
let teal = ECMA_48.SGR.Color.rgb(r: 0, g: 128, b: 128).foreground
print("\(teal)Teal\(reset)")

// Clear the screen, then home the cursor and hide it.
print(ECMA_48.Screen.erase(.all))
print(ECMA_48.Cursor.position(row: 1, column: 1))
print(ECMA_48.Cursor.hide)
```

---

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/swift-ecma/swift-ecma-48.git", branch: "main")
]
```

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "ECMA 48", package: "swift-ecma-48"),
    ]
)
```

Requires Swift 6.2 and macOS 26 / iOS 26 / tvOS 26 / watchOS 26.

---

## Community

<!-- BEGIN: discussion -->
*Discussion thread will be created at first public release.*
<!-- END: discussion -->

## License

Apache 2.0. See [LICENSE](LICENSE.md).
