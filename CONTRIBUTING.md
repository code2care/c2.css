# Contributing

c2.css is intentionally constrained. Contributions are welcome when they preserve the core idea: native HTML first, CSS only where it creates clear usability.

## Before Opening A Pull Request

Run:

```sh
./test.sh
```

The full build must stay under 380B gzip unless the change explicitly updates the public record claim. The 200B build must stay at or below 200B gzip.

## Design Rules

- Prefer native HTML elements over recreated widgets.
- Do not add JavaScript, fonts, image files, resets, or build tooling to the framework.
- Keep class names byte-coded because class names ship in user HTML.
- Favor selectors that improve multiple components at once.
- Update README examples when behavior changes.
- Keep size claims reproducible with `gzip -9 -n`.

## Browser Changes

If a change depends on a newer CSS feature, document the fallback. c2.css should stay readable in older browsers even when a progressive enhancement is ignored.
