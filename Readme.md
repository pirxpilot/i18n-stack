[![NPM version][npm-image]][npm-url]
[![Dependency Status][gemnasium-image]][gemnasium-url]

# i18n-stack

Stack of connect middleware for language/locale detection and translation.

- [detectLanguage][detect-language] - parse and detect browser language preference
- [overwriteLanguage][overwrite-language] - overwrite language selection with query param and/or cookie
- [gettext][connect-gettext] - insert simple gettext implementation in response

Also exposes [parseAcceptLanguage][parse-accept-language] - in case if you need parsed form
of `Accept-Language` header for some other reason than language selection.

If you don't need this exact stack all of its components can be used separately.

## Install

```sh
$ npm install --save i18n-stack
```

## Usage

```js

var app = require('express');

var locale = {
  supportedLanguages: ['de', 'fr', 'pl', 'en-GB', 'en-US'],
  defaultLanguage: 'en',
  gettextAlias: '_'
};

var i18n = require('i18n-stack');

app.use(i18n.overwriteLanguage(locale));
app.use(i18n.detectLanguage(locale));
app.use(i18n.gettext)(locale));


```

## License

MIT © [Damian Krzeminski](https://pirxpilot.me)

[detect-language]: https://npmjs.org/package/detect-language
[overwrite-language]: https://npmjs.org/package/overwrite-language
[connect-gettext]: https://npmjs.org/package/connect-gettext
[parse-accept-language]: https://npmjs.org/package/parse-accept-language

[npm-image]: https://img.shields.io/npm/v/i18n-stack.svg
[npm-url]: https://npmjs.org/package/i18n-stack

[gemnasium-image]: https://img.shields.io/gemnasium/pirxpilot/i18n-stack.svg
[gemnasium-url]: https://gemnasium.com/pirxpilot/i18n-stack
