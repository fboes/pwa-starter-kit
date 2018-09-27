PWA Starter Kit
===============

Snippets for kick-starting your PWA.

Instructions
------------

All required template files are in `/htdocs`.

1. Create PNG icons with 192×192 pixels and 512×512 pixels and put them under your document root.
1. Run `./setup.sh` to customize your snippets to your application's settings _or_ customize your settings manually (see below).
1. Copy `manifest.json` to your document root.
1. Copy `sw.js` to the same folder as `manifest.json`.
1. Copy HTML from `index.html`'s `<head />` to your template's `<head />`.
1. Copy HTML from `index.html`'s `<script />` to your template's footer section.

### Manually changing values in `mainfest.json`

1. Add the URLs of your PNG icons under `icons`.
1. Change the `name`, `description` and `short_name` to match your site's settings. Remember to use less than 13 characters for `short_name`.
1. Change `theme_color` settings.

For more information see the [documentation on `manifest.json` at MDN](https://developer.mozilla.org/en-US/docs/Web/Manifest) and the [documentation on `manifest.json` at Google](https://developers.google.com/web/fundamentals/web-app-manifest/).

### Manually changing values in HTML snippets

1. Change icon URLs to match your PNG icon URLs.
1. Change `theme-color` to match your theme color.

Validation
----------

* [ ] Open Chrome Desktop > Inspector (`F12`) > Audits and run a "PWA audit"
* [ ] Open Firefox Mobile and check if ["Add to homescreen" (A2HS)](https://developer.mozilla.org/en-US/docs/Web/Apps/Progressive/Add_to_home_screen) shows up

More ressources
---------------

* [PWA Builder](https://www.pwabuilder.com/) generates the snippets for you and validates your `manifest.json`.
* [Google's Workbox](https://developers.google.com/web/tools/workbox/) is a very simple way to build caching strategies.
* [PWA.rocks](https://pwa.rocks/) has some nice examples of PWAs.

Legal stuff
-----------

Author: [Frank Boës](http://3960.org)

Copyright & license: See [LICENSE.txt](LICENSE.txt)
