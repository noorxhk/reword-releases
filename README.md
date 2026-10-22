<p align="center"><img src="docs/icon.png" width="128" alt="Reword icon"></p>

<h1 align="center">Reword</h1>

**Talk or type in English, Urdu or Roman Urdu, and get clean, polished text in any Mac app.**

- **Dictate anywhere.** Hold **fn**, speak, let go, and your words are typed where the cursor is. Filler words, self-corrections ("2pm, actually 3pm") and spoken lists are cleaned up for you.
- **Rewrite anything.** Select text and press **⌥2**: rephrase, shorten, formalize, expand, fix grammar, bullet points, summarize, change the tone, or translate between Roman Urdu, Urdu and English. Pick from 3 versions.
- **Speak a command.** Select text, hold **fn + ⌃** and say what to change: "make it polite and shorter".
- **Make it yours.** Snippets ("my calendar" types your booking link), a dictionary for names, and a style per app: casual Roman Urdu in WhatsApp, professional English in Mail.

Speech is turned into text on your Mac. Rewriting uses your own free AI key. No account, no Reword server.

## Requirements

- macOS 26 (Tahoe) or later
- A Mac with Apple silicon (M1 or newer)

**New to this?** Follow the [step-by-step install guide](https://noorxhk.github.io/reword-releases/), with pictures.

## Quick install

Paste this in Terminal. It installs the latest version into Applications and opens it:

```bash
curl -fsSL https://raw.githubusercontent.com/noorxhk/reword-releases/main/install.sh | bash
```

Then follow steps 4 to 6 below.

## Install

1. Download **Reword-x.y.z.dmg** from [Releases](https://github.com/noorxhk/reword-releases/releases/latest).
2. Open it and drag **Reword** into **Applications**, then open Reword.
3. The first time, macOS blocks apps from outside the App Store. Go to **System Settings › Privacy & Security**, scroll down, and click **Open Anyway** next to Reword.
4. Allow **Accessibility** when asked, so Reword can read and replace selected text. Allow **Microphone** the first time you hold fn.
5. In **System Settings › Keyboard**, set **"Press 🌐 key to"** to **Do Nothing**, so fn is free for dictation.
6. In Reword's **Settings › Voice**, choose the language you speak.

Dictation works from here. Add a free AI key to unlock rewriting.

## Add a free AI key

Open **Settings › AI**, choose a service, click **Get a free key**, then paste the key and click **Test key**.

| Service | Why pick it |
|---|---|
| Groq (default) | Fastest: about half a second per dictation |
| Google Gemini | Strong with Urdu |
| OpenRouter | Many free models |
| Other | Any OpenAI-compatible API |

Your key is stored in your Mac's Keychain and is only sent to the service you chose. Free keys have usage limits set by each service. If you reach one, Reword tells you, and you can switch services.

## Shortcuts

| Shortcut | What it does |
|---|---|
| Hold **fn** | Dictate |
| Double-tap **fn** | Dictate hands-free (tap fn to finish) |
| **fn + ⌃** with text selected | Change the text by voice |
| **Esc** | Cancel while listening |
| **⌥2** with text selected | Open the rewrite palette |
| **⌥3** / **⌥4** / **⌥5** | Rephrase / shorten / formalize in place |
| **⌘Z** | Undo a rewrite |

You can change the shortcuts in **Settings › Hotkeys**.

## Privacy

- Your voice never leaves your Mac.
- Text you rewrite goes directly from your Mac to the AI service you chose.
- History, snippets and settings stay on your Mac. Clear history any time in **History**.

## Troubleshooting

| Problem | Fix |
|---|---|
| Shortcuts do nothing | Check **Settings › Permission**. After an update, remove Reword from **Privacy & Security › Accessibility** and add it again. |
| fn opens the emoji picker | **System Settings › Keyboard › "Press 🌐 key to" › Do Nothing** |
| Urdu or mixed Urdu/English comes out wrong | **Settings › Voice › I speak › Urdu + English** (it understands English too) |
| "…needs a free AI key" | Add a key in **Settings › AI** |
| "limit is used up" | Wait a while, or choose another service in **Settings › AI** |
| A name keeps coming out wrong | Add it to **Dictionary** |
