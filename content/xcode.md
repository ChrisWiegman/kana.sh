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

<div style="display:flex; flex-wrap:wrap; gap:1rem; margin:2rem 0 1rem;">
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#c8804a; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Keywords</strong>
            <code style="color:#a88060; font-size:0.8rem;">#c8804a</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#a88060; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Types</strong>
            <code style="color:#a88060; font-size:0.8rem;">#a88060</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#d4a87a; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Strings</strong>
            <code style="color:#a88060; font-size:0.8rem;">#d4a87a</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#ede6dd; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Text Bright</strong>
            <code style="color:#a88060; font-size:0.8rem;">#ede6dd</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#1a1816; height:56px; border-bottom:1px solid #4a4540;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Background</strong>
            <code style="color:#a88060; font-size:0.8rem;">#1a1816</code>
        </div>
    </div>
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
