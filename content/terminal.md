---
title: "Mac Terminal"
date: 2026-05-03T00:00:00+00:00
description: "Kana Dark for Mac Terminal — a warm, earthy profile for Terminal.app on macOS."
type: page
---

![Kana Terminal Theme](/images/terminal.png "The Kana theme in the Mac Terminal using the MonoLisa font")

Kana Dark is a Terminal.app profile for macOS. It sets background, foreground, cursor, selection, and all sixteen ANSI color slots to match the rest of the Kana family — warm, earthy tones tuned for long sessions at the command line.

The profile is configured with [MonoLisa](https://www.monolisa.dev) Regular at 13 pt with 1.2× line spacing, 120 columns, and 48 rows. It launches attached to tmux by default — adjust the command in the profile settings to suit your setup.

## Installation

1. [Download Kana-Dark.zip](/Kana-Dark.zip) and unzip it to get `Kana Dark.terminal`.
2. Open **Terminal** → **Settings** (macOS Ventura and later) or **Terminal** → **Preferences** (older macOS).
3. Go to the **Profiles** tab, click the **⋯** button at the bottom of the profile list, and choose **Import…**.
4. Select the `Kana Dark.terminal` file.
5. Select **Kana Dark** in the profile list and click **Default**.

Reopen any existing windows to apply the profile.

## Colors

### UI Colors

<div class="swatches">
    {{< swatch name="Background" color="#1a1816" outline=true note="#1a1816 · 90% opacity" >}}
    {{< swatch name="Text" color="#b0a898" >}}
    {{< swatch name="Bold Text" color="#d4cbbf" >}}
    {{< swatch name="Cursor" color="#d4be98" >}}
    {{< swatch name="Selection" color="#332e2b" >}}
</div>

### ANSI Colors

<div class="table-scroll">
<table class="ansi">
<thead>
<tr>
  <th>Slot</th>
  <th>Normal</th>
  <th>Bright</th>
</tr>
</thead>
<tbody>
<tr>
  <td>Black</td>
  <td>{{< chip "#22201e" >}}</td>
  <td>{{< chip "#3a3530" >}}</td>
</tr>
<tr>
  <td>Red</td>
  <td>{{< chip "#f8454a" >}}</td>
  <td>{{< chip "#c8672f" >}}</td>
</tr>
<tr>
  <td>Green</td>
  <td>{{< chip "#56b055" >}}</td>
  <td>{{< chip "#56b055" >}}</td>
</tr>
<tr>
  <td>Yellow</td>
  <td>{{< chip "#c48d43" >}}</td>
  <td>{{< chip "#d39560" >}}</td>
</tr>
<tr>
  <td>Blue</td>
  <td>{{< chip "#639b85" >}}</td>
  <td>{{< chip "#639b85" >}}</td>
</tr>
<tr>
  <td>Magenta</td>
  <td>{{< chip "#ac4e42" >}}</td>
  <td>{{< chip "#c8672f" >}}</td>
</tr>
<tr>
  <td>Cyan</td>
  <td>{{< chip "#d39560" >}}</td>
  <td>{{< chip "#d39560" >}}</td>
</tr>
<tr>
  <td>White</td>
  <td>{{< chip "#c5b9ad" >}}</td>
  <td>{{< chip "#ccbfb0" >}}</td>
</tr>
</tbody>
</table>
</div>

## Profile Settings

| Setting | Value |
|---|---|
| Font | MonoLisa Regular, 13 pt |
| Line spacing | 1.2× |
| Columns | 120 |
| Rows | 48 |
| Scrollback | Unlimited |
| Cursor | Blinking block |
| Default command | `tmux attach-session` |

The default command attaches to an existing tmux session on launch. Change it in **Profiles** → **Kana Dark** → **Shell** → **Run command** if you prefer a plain shell.
