---
title: "Xcode"
date: 2026-05-03T00:00:00+00:00
description: "Kana for Xcode — a warm, earthy dark theme for Swift and Objective-C development."
type: page
---

Kana for Xcode extends the palette into Apple's IDE. The same terracotta, amber, and stone tones that color your editor and terminal carry through to Swift, Objective-C, and every other language Xcode handles.

## Installation

1. Download the [Kana theme file](https://github.com/ChrisWiegman/kana-xcode-theme/releases/latest) from GitHub releases.
2. Create the Xcode themes folder if it does not exist:

```sh
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
```

3. Move the downloaded theme file into that folder (via Finder or `cp`).
4. Restart Xcode.
4. Open **Xcode** → **Settings** → **Themes** and select **Kana**.

## The Palette

<div class="swatches">
    {{< swatch name="Keywords" color="#c8804a" >}}
    {{< swatch name="Types" color="#a88060" >}}
    {{< swatch name="Strings" color="#d4a87a" >}}
    {{< swatch name="Text Bright" color="#ede6dd" >}}
    {{< swatch name="Background" color="#1a1816" outline=true >}}
</div>

## Swift Preview

```swift {file="ThemeColor.swift"}
import Foundation

/// A single color entry in the Kana palette.
struct ThemeColor {
    let name: String
    let hex: String
    let usage: String
}

let palette: [ThemeColor] = [
    ThemeColor(name: "Primary",    hex: "#c8804a", usage: "keywords, headings"),
    ThemeColor(name: "Secondary",  hex: "#a88060", usage: "types, attributes"),
    ThemeColor(name: "Accent",     hex: "#d4a87a", usage: "strings, links"),
    ThemeColor(name: "Text",       hex: "#cec6bc", usage: "default foreground"),
    ThemeColor(name: "Background", hex: "#1a1816", usage: "editor background"),
]

func renderPalette(_ colors: [ThemeColor]) {
    for color in colors {
        print("\(color.name): \(color.hex) — \(color.usage)")
    }
}

renderPalette(palette)
```

```swift {file="ContentView.swift"}
import SwiftUI

struct ContentView: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color(hex: "#c8804a"))
            Text(subtitle)
                .font(.body)
                .foregroundColor(Color(hex: "#cec6bc"))
        }
        .padding()
        .background(Color(hex: "#1a1816"))
    }
}

#Preview {
    ContentView(
        title: "Kana Theme",
        subtitle: "A warm, earthy dark theme for Xcode."
    )
}
```

## Source

The theme file and full color mapping are on [GitHub](https://github.com/ChrisWiegman/kana-xcode-theme).
