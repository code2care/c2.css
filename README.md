# c2.css

`c2.css` is a byte-coded HTML5/CSS3 UI framework for extremely small, native-feeling web interfaces. It is pure CSS: no JavaScript, no font files, no images, no reset, no build step, and no dependency.

Developed and managed by [code2care.org](https://code2care.org/).
Support the project: [Buy me a coffee](https://buymeacoffee.com/code2care).

Website: https://code2care.github.io/c2.css/
Demo: https://code2care.github.io/c2.css/demo.html

## World Record Claim

`c2.css` claims the **smallest known responsive CSS UI framework by reproducible gzip size**.

`c2.css` measures **378B gzip** with `gzip -9 -n`, while still covering navbars, layout, grid, typography, buttons, cards, forms, tables, code blocks, quotes, highlights, video, responsive media, and native light/dark mode.

Known small-framework ranking:

| Rank | Framework | Public size claim | Source |
|---:|---|---:|---|
| 1 | `c2.css` | 378B gzip | local `./size.sh` |
| 2 | `lit` | 395B gzip | https://ajusa.github.io/lit/docs/lit.html |
| 3 | `bitty-css` | 793B gzip | https://www.skypack.dev/view/bitty-css |
| 4 | `min` | 995B | https://cdnjs.com/libraries/min |
| 5 | `browser.style` | ~1KB Brotli | https://browser.style/ |

`c2.200.css` is the extreme build at **197B gzip**. It is smaller, but its claim is narrower: a 200B-class native component framework.

This is a public technical claim based on known CSS-framework size claims and reproducible local measurement.

## Files

| File | Purpose |
|---|---|
| `c2.nano.css` | 187B raw native nucleus |
| `c2.200.css` | 200B-class gzip component build |
| `c2.css` | fuller micro-framework core |
| `index.html` | documentation website built with `c2.css` |
| `demo.html` | component/kitchen-sink demo built with `c2.css` |
| `size.sh` | reproducible size measurement |
| `LICENSE` | MIT License |

## GitHub Pages

This package is ready to host as a static GitHub Pages site.

1. Push the repository to GitHub.
2. Go to repository settings.
3. Enable Pages from the branch root.
4. Open the generated Pages URL.

`index.html` is the landing page, `demo.html` is the component demo, and the CSS files can be linked directly from the same repository.

Live URLs:

- Website: https://code2care.github.io/c2.css/
- Demo: https://code2care.github.io/c2.css/demo.html

The documentation page uses inline SVG icons. Keep icons inline when you customize the site; that preserves the no-font, no-image, no-extra-request rule.

## Philosophy

c2.css starts from one premise: **the browser is already a UI framework**.

HTML ships buttons, inputs, selects, textareas, tables, details, summary, dialog, progress, meter, images, video, and semantic layout elements. Most CSS frameworks spend kilobytes restyling or replacing those primitives. c2.css takes the opposite path: keep native behavior, then spend bytes only where the browser defaults need help.

The design goals:

- **Small is a feature.** Every selector and declaration is part of the product.
- **Native behavior wins.** Forms, controls, media, and accessibility should remain platform-native.
- **No build step.** A framework this small should work with one `<link>`.
- **No JavaScript dependency.** CSS should not require a runtime.
- **No false completeness.** If HTML already has a primitive, c2.css should support it rather than recreate it.
- **Readable pages first.** Docs, landing pages, prototypes, forms, tables, and content-heavy pages are the primary target.
- **Honest records.** Size claims must be reproducible with exact commands.

The goal is not to make a tiny Bootstrap. The goal is to prove that good native interfaces can be measured in bytes.

## Size

Run:

```sh
./size.sh
```

Current local measurements:

| File | Raw | gzip | Brotli |
|---|---:|---:|---:|
| `c2.nano.css` | 187B | 164B | 121B |
| `c2.200.css` | 236B | 197B | 162B |
| `c2.css` | 628B | 378B | 286B |
| `index.html` | 22285B | 5760B | 4683B |
| `demo.html` | 6503B | 2100B | 1600B |
| `index.html + c2.css` | 22913B | 5781B | 4699B |
| `demo.html + c2.css` | 7131B | 2412B | 1860B |

`gzip` is measured with `gzip -9 -n` so filename and timestamp metadata do not affect the result.

## Install

Use the full micro-framework core:

```html
<link rel="stylesheet" href="c2.css">
```

Or paste the complete record build:

```css
:root{color-scheme:light dark}body,.c{max-width:70ch;margin:auto;padding:1em}body{font:1em/1.5 system-ui}img,video,svg{max-width:100%}button,input,select,textarea,.b{font:inherit;padding:.5em}button,.b,.k,pre{border:1px solid;border-radius:.5em}.b{display:inline-block;text-decoration:none}.p{background:CanvasText;color:Canvas}.r,.g{display:flex;gap:1em;flex-wrap:wrap}.g>*{flex:1 12em}.y>*+*{margin-top:1em}.k,pre{padding:1em}pre{overflow:auto}table{width:100%;border-spacing:0}th,td{border-bottom:1px solid;padding:.3em}.w{width:100%;box-sizing:border-box}blockquote{border-left:3px solid;padding-left:1em}mark{padding:.1em}
```

Use the 200B-class build when the byte ceiling is stricter:

```html
<link rel="stylesheet" href="c2.200.css">
```

Use the raw sub-200B nucleus for mostly native pages:

```html
<link rel="stylesheet" href="c2.nano.css">
```

## API

The production API is intentionally tiny.

| Class | Meaning | Use |
|---|---|---|
| `c` | container | readable centered layout |
| `r` | row | horizontal action/nav group |
| `g` | grid | responsive equal-width columns |
| `y` | stack | vertical rhythm between children |
| `k` | card | thin bordered panel |
| `b` | button | button-like link |
| `p` | primary | inverted primary action |
| `w` | wide | full-width field/media |

## Example

```html
<main class="c y">
  <section class="k y">
    <h1>Small UI</h1>
    <p>Native, fast, readable.</p>
    <p class="r">
      <a class="b p" href="/start">Start</a>
      <a class="b" href="/demo">Demo</a>
    </p>
  </section>
</main>
```

## What It Covers

`c2.css` covers:

- readable layout with `body` and `.c`
- native light/dark mode with `color-scheme`
- typography via compact system font defaults
- navbars using `header`, `nav`, and `.r`
- responsive media for `img`, `video`, and `svg`
- native buttons and form controls
- button-like links with `.b`
- primary actions with `.p`
- rows and action groups with `.r`
- responsive equal-width grids with `.g`
- toolbars/action groups with `.r`
- vertical rhythm with `.y`
- cards/panels with `.k`
- code blocks with `pre`
- tables with full width and row separators
- quote/callout styling with `blockquote`
- highlighted text with `mark`
- full-width fields/media with `.w`

`c2.200.css` covers container, native dark/light mode, typography, media safety, forms, button links, cards, code overflow, and a row/grid primitive.

Native HTML supplies the rest: `details`, `summary`, `dialog`, `progress`, `meter`, lists, tables, buttons, inputs, selects, textareas, checkboxes, and radios.

## Full c2.css Code

```css
:root{color-scheme:light dark}
body,.c{max-width:70ch;margin:auto;padding:1em}
body{font:1em/1.5 system-ui}
img,video,svg{max-width:100%}
button,input,select,textarea,.b{font:inherit;padding:.5em}
button,.b,.k,pre{border:1px solid;border-radius:.5em}
.b{display:inline-block;text-decoration:none}
.p{background:CanvasText;color:Canvas}
.r,.g{display:flex;gap:1em;flex-wrap:wrap}
.g>*{flex:1 12em}
.y>*+*{margin-top:1em}
.k,pre{padding:1em}
pre{overflow:auto}
table{width:100%;border-spacing:0}
th,td{border-bottom:1px solid;padding:.3em}
.w{width:100%;box-sizing:border-box}
blockquote{border-left:3px solid;padding-left:1em}
mark{padding:.1em}
```

## Rule Explanation

| Rule | Purpose |
|---|---|
| `:root{color-scheme:light dark}` | native light/dark page and form control behavior |
| `body,.c` | readable page width and reusable container |
| `body{font...}` | compact typography in one declaration |
| `img,video,svg` | responsive media without wrappers |
| `button,input...,.b` | forms and button-like links align visually |
| `button,.b,.k,pre` | shared thin border and radius for controls, cards, code |
| `.p` | primary action using system colors |
| `.r,.g` | one flex primitive powers nav, actions, and grid |
| `.y>*+*` | vertical rhythm without spacing utilities |
| `table/th/td` | deliberate tables without a full table system |
| `blockquote` | quote/callout styling in one small rule |
| `mark` | compact highlighted text |
| `.w` | full-width fields while preserving box sizing |

## Component Examples

Navbar:

```html
<header class="r">
  <strong>Brand</strong>
  <nav class="r">
    <a href="/">Home</a>
    <a href="/docs">Docs</a>
  </nav>
</header>
```

Row / toolbar:

```html
<p class="r">
  <button>Save</button>
  <button>Preview</button>
  <a class="b" href="/">Share</a>
</p>
```

Container and card:

```html
<main class="c y">
  <section class="k y">
    <h1>Title</h1>
    <p>Content</p>
  </section>
</main>
```

Grid:

```html
<div class="g">
  <article class="k">One</article>
  <article class="k">Two</article>
  <article class="k">Three</article>
</div>
```

Buttons:

```html
<p class="r">
  <a class="b p" href="/">Primary</a>
  <a class="b" href="/">Secondary</a>
  <button>Button</button>
</p>
```

Form:

```html
<form class="k y">
  <label>Email <input class="w" type="email"></label>
  <label>Message <textarea class="w"></textarea></label>
  <button class="p">Send</button>
</form>
```

Table:

```html
<table>
  <tr><th>Build</th><th>gzip</th></tr>
  <tr><td>c2.css</td><td>378B</td></tr>
</table>
```

Responsive media:

```html
<img class="w" src="image.jpg" alt="">
<video class="w" controls src="clip.mp4"></video>
<svg viewBox="0 0 640 220">...</svg>
```

Quote and highlight:

```html
<blockquote>
  Small can still feel <mark>complete</mark>.
</blockquote>
```

Code block:

```html
<pre><code>
npm install nothing
ship bytes, not bundles
</code></pre>
```

Native components:

```html
<details class="k">
  <summary>Details</summary>
  <p>Native disclosure.</p>
</details>
<progress class="w" max="100" value="72"></progress>
<meter class="w" min="0" max="10" value="7"></meter>
```

## Design Rules

- Use native HTML first.
- Add CSS only when it changes real usability.
- Keep class names byte-coded because class names ship in HTML too.
- Prefer one rule that helps multiple components.
- Do not add JavaScript to the framework.
- Do not claim a record without publishing exact measurement commands.

## License

MIT. See `LICENSE`.

## Sources Checked

- lit: https://ajusa.github.io/lit/docs/lit.html
- lit Product Hunt listing: https://www.producthunt.com/products/lit-2
- bitty-css: https://www.skypack.dev/view/bitty-css
- min: https://cdnjs.com/libraries/min
- browser.style: https://browser.style/
- chota: https://jenil.github.io/chota/
- Milligram: https://milligram.io/
