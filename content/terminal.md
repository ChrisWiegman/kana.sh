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

<div style="display:flex; flex-wrap:wrap; gap:1rem; margin:2rem 0 1rem;">
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#1a1816; height:56px; border-bottom:1px solid #4a4540;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Background</strong>
            <code style="color:#a88060; font-size:0.8rem;">#1a1816 · 90% opacity</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#b0a898; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Text</strong>
            <code style="color:#a88060; font-size:0.8rem;">#b0a898</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#d4cbbf; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Bold Text</strong>
            <code style="color:#a88060; font-size:0.8rem;">#d4cbbf</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#d4be98; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Cursor</strong>
            <code style="color:#a88060; font-size:0.8rem;">#d4be98</code>
        </div>
    </div>
    <div style="flex:1; min-width:130px; border-radius:8px; overflow:hidden; border:1px solid #4a4540;">
        <div style="background:#332e2b; height:56px;"></div>
        <div style="padding:0.75rem; background:#252220;">
            <strong style="color:#ede6dd; display:block; font-size:0.9rem;">Selection</strong>
            <code style="color:#a88060; font-size:0.8rem;">#332e2b</code>
        </div>
    </div>
</div>

### ANSI Colors

<div style="overflow-x:auto; margin:1.5rem 0 2rem;">
<table style="border-collapse:collapse; width:100%; font-size:0.9rem;">
<thead>
<tr>
  <th style="text-align:left; padding:0.5rem 0.75rem; border-bottom:1px solid #4a4540; color:#ede6dd;">Slot</th>
  <th style="text-align:left; padding:0.5rem 0.75rem; border-bottom:1px solid #4a4540; color:#ede6dd;">Normal</th>
  <th style="text-align:left; padding:0.5rem 0.75rem; border-bottom:1px solid #4a4540; color:#ede6dd;">Bright</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Black</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#22201e; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#22201e</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#3a3530; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#3a3530</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Red</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#f8454a; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#f8454a</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#c8672f; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#c8672f</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Green</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#56b055; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#56b055</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#56b055; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#56b055</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Yellow</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#c48d43; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#c48d43</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#d39560; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#d39560</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Blue</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#639b85; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#639b85</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#639b85; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#639b85</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Magenta</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#ac4e42; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#ac4e42</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#c8672f; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#c8672f</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc; border-bottom:1px solid #2e2b28;">Cyan</td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#d39560; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#d39560</code></td>
  <td style="padding:0.5rem 0.75rem; border-bottom:1px solid #2e2b28;"><span style="display:inline-block; width:14px; height:14px; background:#d39560; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#d39560</code></td>
</tr>
<tr>
  <td style="padding:0.5rem 0.75rem; color:#cec6bc;">White</td>
  <td style="padding:0.5rem 0.75rem;"><span style="display:inline-block; width:14px; height:14px; background:#c5b9ad; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#c5b9ad</code></td>
  <td style="padding:0.5rem 0.75rem;"><span style="display:inline-block; width:14px; height:14px; background:#ccbfb0; border:1px solid #4a4540; border-radius:3px; vertical-align:middle; margin-right:0.4rem;"></span><code style="color:#a88060;">#ccbfb0</code></td>
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
