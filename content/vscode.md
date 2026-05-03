---
title: "VS Code"
date: 2026-05-03T00:00:00+00:00
description: "Kana for Visual Studio Code — a warm, earthy dark theme for your code editor."
type: page
---

![The Kana VS Code theme](/images/vscode.png)

Kana for Visual Studio Code brings the same warm, earthy palette to your code editor. The syntax tokens map naturally to Kana's terracotta, amber, and stone tones — readable at a glance, easy on the eyes over long sessions.

## Installation

Open the Extensions panel (`Cmd+Shift+X` on macOS, `Ctrl+Shift+X` on Windows/Linux) and search for **Kana**. Click **Install**, then activate it:

1. Open the Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`)
2. Run **Preferences: Color Theme**
3. Select **Kana**

You can also install from the terminal:

```sh
code --install-extension ChrisWiegman.kana-theme
```

## The Palette

<div style="display:flex; flex-wrap:wrap; gap:1rem; margin:2rem 0 1rem;">
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#c8804a; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Primary</strong>
            <code style="color:#a88060; font-size:0.8rem;">#c8804a</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#a88060; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Secondary</strong>
            <code style="color:#a88060; font-size:0.8rem;">#a88060</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#d4a87a; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Accent</strong>
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

## Syntax Preview

The theme covers all standard VS Code token scopes. Here are a few languages to give you a sense of how it looks:

```go {file="main.go"}
package main

import (
    "fmt"
    "os"
)


// App holds application configuration.
type App struct {
    Name    string
    Version string
}

func (a *App) Run() error {
    fmt.Printf("%s v%s\n", a.Name, a.Version)
    return nil
}

func main() {
    app := &App{Name: "kana", Version: "1.0.0"}
    if err := app.Run(); err != nil {
        os.Exit(1)
    }
}
```

```css {file="styles.css"}
:root {
    --color-primary:    #c8804a;
    --color-secondary:  #a88060;
    --color-accent:     #d4a87a;
    --color-bg:         #1a1816;
    --color-text:       #cec6bc;
}

body {
    background: var(--color-bg);
    color: var(--color-text);
    font-family: -apple-system, BlinkMacSystemFont, sans-serif;
}

a {
    color: var(--color-accent);
    text-decoration: none;
}

a:hover {
    color: var(--color-primary);
}
```

```typescript {file="app.ts"}
interface ThemeColor {
    name: string;
    hex: string;
    usage: string;
}

const palette: ThemeColor[] = [
    { name: "Primary",    hex: "#c8804a", usage: "headings, keywords" },
    { name: "Secondary",  hex: "#a88060", usage: "types, decorators" },
    { name: "Accent",     hex: "#d4a87a", usage: "strings, links" },
    { name: "Text",       hex: "#cec6bc", usage: "default foreground" },
    { name: "Background", hex: "#1a1816", usage: "editor background" },
];

function renderPalette(colors: ThemeColor[]): void {
    colors.forEach(({ name, hex }) => {
        console.log(`${name}: ${hex}`);
    });
}

renderPalette(palette);
```

## Source

The theme source is available on [GitHub](https://github.com/ChrisWiegman/kana-vscode-theme). Issues and pull requests are welcome.
