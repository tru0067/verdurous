# Verdurous

A dark, forest theme.

In part inspired by the Flat Love palette by Atomic Tangerine (see
[here](https://www.colourlovers.com/palette/3182748/Flat_love)), which I was
happy enough to stumble upon while checking that the name `verdurous` was not
already in use. Additional inspiration was derived from the popular Nord
colorscheme, as well as from suggestions from friends and family.

This theme makes use of a palette of 16 base colors (see below) in addition to a
base background and foreground color, this allows for ready compatibility with
many terminal based applications.

| ANSI color number | Hex code  | Color                            | Description                                  |
|------------------:|:---------:|:--------------------------------:|:---------------------------------------------|
| 0                 | `#22262A` | ![#22262A](./gallery/22262A.png) | A moderate dark grey with a tinge of blue    |
| 1                 | `#BF4052` | ![#BF4052](./gallery/BF4052.png) | A deep red                                   |
| 2                 | `#00AF60` | ![#00AF60](./gallery/00AF60.png) | The basis for this theme, a verdant green    |
| 3                 | `#B57C65` | ![#B57C65](./gallery/B57C65.png) | Brown supersedes orange in this forest theme |
| 4                 | `#5A89AD` | ![#5A89AD](./gallery/5A89AD.png) | A silvery blue, hailing from the Nord theme  |
| 5                 | `#8558C7` | ![#8558C7](./gallery/8558C7.png) | A royal purple                               |
| 6                 | `#109191` | ![#109191](./gallery/109191.png) | A fairly standard aqua                       |
| 7                 | `#808892` | ![#808892](./gallery/808892.png) | A brighter variant of Tomb                   |
| 8                 | `#384048` | ![#384048](./gallery/384048.png) | Inspired by Tomb of the Flat Love palette    |
| 9                 | `#E04F86` | ![#E04F86](./gallery/E04F86.png) | A beautiful hot pink, perfect for highlights |
| 10                | `#80D468` | ![#80D468](./gallery/80D468.png) | A grassy green                               |
| 11                | `#FFE958` | ![#FFE958](./gallery/FFE958.png) | A vibrant yellow                             |
| 12                | `#87B4E0` | ![#87B4E0](./gallery/87B4E0.png) | A bright silvery blue, reminiscient of Nord  |
| 13                | `#D668E1` | ![#D668E1](./gallery/D668E1.png) | A heliotrope purple                          |
| 14                | `#5BDDD0` | ![#5BDDD0](./gallery/5BDDD0.png) | A shiny bright teal                          |
| 15                | `#F1E6D9` | ![#F1E6D9](./gallery/F1E6D9.png) | A slightly creamy white, a recommendation    |
| bg                | `#1B1C1D` | ![#1B1C1D](./gallery/F1E6D9.png) | A deep dark grey                             |
| fg                | `#F1E6D9` | ![#F1E6D9](./gallery/F1E6D9.png) | (Same as 15)                                 |

You can use the provided `deploy.sh` script to create some skeleton config files
in order to use these themes. These skeleton files generally just source the
themes in this repo, so you can add any of your own changes to the end of the
skeleton files and things should work.

### Gallery

![Vim with several vertical splits](./gallery/splits.png)

### Themes

##### Vim
The verdurous colorscheme for vim. Set e.g. `colorscheme verdurous-dark` in your
`.vimrc` to use this theme. You can use `set termguicolors` in your `.vimrc` for
things to work out of the box. Otherwise, you can use verdurous' 16 color
palette with your terminal emulator of choice.

##### Alacritty
The verdurous colorscheme for alacritty. Set e.g.:
```yml
import:
  - ~/.config/alacritty/verdurous-dark.yml
```
within your `alacritty.yml` to use this theme.

##### Firefox
The verdurous colorscheme for firefox. Also available at
<https://addons.mozilla.org/.../verdurous>.

Upload note: In order to be consumable by Firefox's addon system, this theme
will need to be packaged. E.g. with:
```sh
cd themes/firefox/verdurous-darker
zip -r -FS ../firefox-verdurous-darker.zip *
```
The `.zip` file can then be uploaded to <https://addons.mozilla.org>.

##### Thunderbird
Upload note: In order to be consumable by Thunderbird's addon system, this theme
will need to be packaged. E.g. with:
```sh
cd themes/thunderbird/verdurous-darker
zip -r -FS ../thunderbird-verdurous-darker.xpi *
```
The `.xpi` file can then be uploaded to <https://addons.thunderbird.net>.
