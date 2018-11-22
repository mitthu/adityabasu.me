---
layout: post
title: Generating favicon for personal blog
published: true
excerpt_separator: <!--more-->
---

We will go through creating a favicon (an avatar), converting it to necessary image format(s), and finally configuring webpages to use it.

<!--more-->

{%- include basepaths.html -%}

First we need to create a favicon to add it to our website. For a personal blog I prefer using a personalized avatar. I used [avatarmaker.com](https://avatarmaker.com/) to create my avatar and downloaded the `svg` version to have a high quality image. Now the only bowsers that support `svg` favicons are Firefox and Safari. Hence it is a good idea to create a `png` version as well for say Chrome users.

**Note:** You might also want to create an `.ico` version.

## Generating the png version
For this I used [svgexport](https://github.com/shakiba/svgexport). This utility can convert `.svg` images to `.png`, `.jpg` and `.jpeg` versions.

1. First you will need to install `npm`. Go to [this link](https://nodejs.org/en/download/) to download and install `npm`.
2. To install `svgexport` on mac type the following in the terminal:
    ```bash
    sudo npm install --global --unsafe-perm=true --allow-root svgexport
    ```
    {: .nolineno}
3. Now to generate the `png` version of the favicon, use
    ```bash
    svgexport images/favicon.svg images/favicon.png 64x
    ```
    {: .nolineno}

For me, the file sizes were:
* favicon.svg = 51 KB
* favicon.png = 1.1 MB

**Note:** I tried using *ImageMagick* to convert the `.svg` file to `.png` file. However it gave me errors and failed converting the `svg` file downloaded from [avatarmaker.com](https://avatarmaker.com/).

## Embedding the favicons in html  page
Next we need to add the following html tags to the `<head>...</head>` section of all webpages:

```html
<link rel="shortcut icon" type="image/svg" href="/images/favicon.svg" />
<link rel="shortcut icon" type="image/png" href="/images/favicon.png" />
```

Now the favicon should be picked up by web browsers whenever your website gets loaded.

# References
* https://avatarmaker.com/
* https://github.com/shakiba/svgexport
* https://stackoverflow.com/questions/9853325/how-to-convert-a-svg-to-a-png-with-image-magick
* https://www.w3.org/2005/10/howto-favicon
* https://codex.wordpress.org/Creating_a_Favicon
