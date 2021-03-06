PWA Starter Kit
===============

Snippets for kick-starting your Progressive Web App (PWA).

Instructions
------------

All required template files are in `/htdocs`.

1. Create PNG icons with 192×192 pixels and 512×512 pixels and put them in your application root directory.
1. Run [`./setup.sh`](setup.sh) to customize your snippets to your application's settings _or_ customize your settings manually (see below).
1. Copy [`manifest.json`](htdocs/manifest.json) to your application root directory.
1. Copy [`sw.js`](htdocs/sw.js) to the same folder as `manifest.json`.
1. Copy HTML from [`index.html`](htdocs/index.html)'s `<head />` to your template's `<head />`. In case you are using AMP pages, copy HTML from [`amp.html`](htdocs/amp.html)'s `<head />` to your template's `<head />`.
1. Copy HTML from [`index.html`](htdocs/index.html)'s `<script />` to your template's footer section. In case you are using AMP pages, copy HTML from [`amp.html`](htdocs/amp.html)'s `<amp-install-serviceworker />` to your template's footer section.

### Manually changing values in `manifest.json`

1. Add the URLs of your PNG icons under `icons`.
1. Change the `name`, `description` and `short_name` to match your site's settings. Remember to use less than 13 characters for `short_name`.
1. Change `theme_color` settings.

For more information see the [documentation on `manifest.json` at MDN](https://developer.mozilla.org/en-US/docs/Web/Manifest) and the [documentation on `manifest.json` at Google](https://developers.google.com/web/fundamentals/web-app-manifest/).

### Manually changing values in HTML snippets

1. Change icon URLs to match your PNG icon URLs.
1. Change `theme-color` to match your theme color.

### Designing your own icons

If you are designing icons for your PWA you should consider the following guidelines:

* [ ] Use PNG images
* [ ] At least supply sizes 192×192 pixels and 512×512 pixels
* [ ] You might want to [consider the safe zone for Android 8+ icons](https://css-tricks.com/maskable-icons-android-adaptive-icons-for-your-pwa/)

You may want to use [ImageMagick](http://www.imagemagick.org/) to convert your images to rectangular icons…

```shell
for SIZE in "192x192" "512x512"; do
  convert original.png -resize "${SIZE}^" -gravity center -crop ${SIZE}+0+0 +repage favicon-${SIZE}.png
done
```

…or circular icons:

```shell
# @see http://www.imagemagick.org/Usage/thumbnails/#rounded
for SIZE in "192x192" "512x512"; do
  convert original.png -resize "${SIZE}^" -gravity center -crop ${SIZE}+0+0 \
  -alpha set \( +clone -distort DePolar 0 -virtual-pixel HorizontalTile -background None -distort Polar 0 \) \
  -compose Dst_In -composite -trim \
  +repage favicon-${SIZE}.png
done
```

Validation
----------

Before relasing your PWA to the open public you should at least test the following cases:

* [ ] Open "Chrome Desktop > Inspector (`F12`) > Audits" and run a "PWA audit"
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
