# .files

.files for my Development Environment.

## Bash

### Environment Variables

* `$TERMINAL` - Prefered graphical Terminal emulator
  (Default: `gnome-terminal`).
* `$FILE_MANAGER` - Prefered graphical File Manager
  (Default: `nautilus`).
* `$EDITOR` - Prefered non-graphical Text Editor (Default: `vim`).
* `$GUI_EDITOR` - Prefered graphical Text Editor (Default: `gvim`).
* `$BROWSER` - Prefered graphical Browser (Default `firefox`).
* `$EMAIL_CLIENT` - Prefered graphical Email Client (Default: `thunderbird`).
* `$IM_CLIENT` - Prefered graphical IM Client (Default: `pidgin`).
* `$IRC_CLIENT` - Prefered graphical IRC Client (Default: `xchat`).
* `$MUSIC_PLAYER` - Prefered graphical Music Player (Default: `rhythmbox`).
* `$VIDEO_PLAYER` - Prefered graphical Music Player (Default: `totem`).
* `$TORRENT_CLIENT` - Prefered graphical BitTorrent client (Default: `transmission-gtk`).
* `$PACKAGE_MANAGER` - Graphical client for the system Package Manager.
* `$PHP_SHELL` - Spawns an interactive PHP shell (Default: `php -a`).
* `$RUBY_SHELL` - Spawns an interactive Ruby shell (Default: `ripl`).
* `$JS_SHELL` - Spawns an interactive JavaScript shell (Default: `js`).

### Aliases

* `term` - Invokes `$TERMINAL`.
* `files` - Invokes `$FILE_MANAGER`.
* `edit` - Invokes either `$GUI_EDITOR` or `$EDITOR`.
* `browser` - Invokes `$BROWSER`.
* `email` - Invokes `$EMAIL_CLIENT`.
* `im` - Invokes `$IM_CLIENT`.
* `irc` - Invokes `$IRC_CLIENT`.
* `music` - Invokes `$MUSIC_PLAYER`.
* `torrent` - Invokes `$BIT_TORRENT_CLIENT`.
* `phpi` - Invokes `$PHP_SHELL`.
* `rbi` - Invokes `$RUBY_SHELL`.
* `js` - Invokes `$JS_SHELL`.

## Vim

* Minimal `.vimrc`.
  * Enable line-numbering.
  * Set scroll-offset.
  * Bash-like wild-mode.
  * Disable visual-bell.
* `ir_black` vim theme.
* 2-space indentation for:
  * HTML
  * JavaScript
  * PHP
  * Ruby
  * XML / XSL
* Hard-Tab indentation for:
  * Makefile
  * Python
* Force Ruby syntax-highlighting for:
  * Gemfile
  * Rakefile
  * Thorfile
  * config.ru

## Ruby

* Enable tab-completion for IRB.
* Enable common plugins for [Ripl](https://github.com/cldwalker/ripl#readme).

## [FluxBox](http://fluxbox.org/)

### Startup

* (Optional) XComposite Manager.
* (Optional) [Nitrogen](http://projects.l3ib.org/nitrogen/) Background Manager.
* (Optional) Conky.
* Gnome Screensaver.
* Gnome Sound Manager.
* Network Manager Applet.
* (Laptop) Synaptic Touchpad configuration.
* (Laptop) Gnome Power Manager.
* (Laptop) Bluetooth.
* polkit-gnome-authentication-agent-1
* gpg-agent
* gnome-keyring-daemon

### Themes

* [Dyne](http://box-look.org/content/show.php/Dyne?content=61999) Theme.

### Menu

### Key Bindings

    Alt+t                  Switch to the next Terminal Window
    Alt+f                  Switch to the next File Manager Window
    Alt+e                  Switch to the next Editor Window
    Alt+b                  Switch to the next Browser Window
    Alt+i                  Switch to the next IRC Client Window
    Alt+m                  Switch to the next Music Player Window
    Alt+v                  Switch to the next Video Player Window
    Alt+h                  Switch to the next HUD Window
    
    Alt+Backspace          Minimize
    Alt+F1                 Maximize
    Alt+Escape             Kill
    Alt+F11                Fullscreen
    
    Shift+Alt+PageUp       Maximize Vertically
    Shift+Alt+PageDown     Maximize Horizontally
    Shift+Alt+Left         Move Window to the Left
    Shift+Alt+Right        Move Window to the Right
    Shift+Alt+Up           Move Window to the Top
    Shift+Alt+Down         Move Window to the Bottom

    Shift+Alt+Home         Move Window to the Top Left Corner
    Shift+Alt+PageUp       Move Window to the Top Right Corner
    Shift+Alt+5            Move Window to the Center
    Shift+Alt+End          Move Window to the Bottom Left Corner
    Shift+Alt+PageDown     Move Window to the Bottom Right Corner

    Control+Alt+Enter      Opens the Run Dialogue
    Control+Alt+j          Spawns a JavaScript HUD
    Control+Alt+i          Spawns a Ruby HUD
    Control+Alt+p          Spawns a PHP HUD
    Control+Alt+t          Spawns a new Terminal
    Control+Alt+e          Spawns a new Editor
    Control+Alt+b          Spawns a new Browser
    Control+Alt+f          Spawns a new File Manager
    Control+Alt+l          Locks the screen

    PrintScreen            Take a Screenshot

