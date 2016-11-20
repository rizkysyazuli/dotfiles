#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
# brew install dark-mode
# brew install exiv2
# brew install git
brew install git-lfs
brew install imagemagick --with-webp
# brew install lua
brew install lynx
brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rhino
# brew install speedtest_cli
# brew install ssh-copy-id
# brew install testssl
# brew install tree
# brew install vbindiff
# brew install webkit2png
# brew install zopfli
brew install shellcheck

# Custom install
brew install mackup
brew install ant
brew install phantomjs
brew install ffmpeg
brew install git-flow
brew install tig
brew install node
brew install mysql
brew install tidy-html5
brew install itermocil
# brew install legit
# brew install archey
# brew install autoconf
# brew install autoconf-archive
# brew install automake
# brew install betty
# brew install boost
# brew install cloudfoundry-cli
# brew install cmake
# brew install couchdb
# brew install faac
# brew install freetype
# brew install gettext
# brew install gnu-tar
# brew install highlight
# brew install icu4c
# brew install jpeg
# brew install lame
# brew install libgpg-error
# brew install libidn
# brew install libksba
# brew install libpng
# brew install libtiff
# brew install libtool
# brew install makedepend
# brew install mpw
# brew install nspr
# brew install nss
brew install openssl
brew install libyaml
brew install mcrypt
# brew install pcre
# brew install pkg-config
# brew install readline
# brew install scons
# brew install slimerjs
# brew install spidermonkey
# brew install sqlite
# brew install subversion
# brew install texi2html
# brew install tidy
# brew install unixodbc
# brew install webp
# brew install wxmac
# brew install x264
# brew install xulrunner
# brew install xvid
# brew install yasm
# brew install youtube-dl
# brew install zlib

# Third party
brew tap thoughtbot/formulae
brew install gitsh

# Remove outdated versions from the cellar.
brew cleanup

# Desktop apps
brew tap caskroom/cask

brew install Caskroom/cask/cheatsheet
brew install Caskroom/cask/clarify
brew install Caskroom/cask/daisydisk
# brew install Caskroom/cask/divvy
brew install Caskroom/cask/xmarks-safari
brew install Caskroom/cask/alfred
brew install Caskroom/cask/clipmenu
brew install Caskroom/cask/cleanmymac
brew install Caskroom/cask/dropbox
brew install Caskroom/cask/evernote
brew install Caskroom/cask/firefox
brew install Caskroom/cask/google-chrome
brew install Caskroom/cask/google-drive
brew install Caskroom/cask/google-photos-backup
# brew install Caskroom/cask/lastfm
brew install Caskroom/cask/namechanger
brew install Caskroom/cask/techstoreclub-simple-comic
# brew install Caskroom/cask/skitch
brew install Caskroom/cask/skype
brew install Caskroom/cask/spectacle
brew install Caskroom/cask/steam
brew install Caskroom/cask/battle-net
brew install Caskroom/cask/the-unarchiver
brew install Caskroom/cask/vlc
brew install Caskroom/cask/spotify
# brew install Caskroom/cask/handbrake
# brew install Caskroom/cask/macgamestore
# brew install Caskroom/cask/cyberghost
brew install Caskroom/cask/focus
brew install Caskroom/cask/recordit
# brew install Caskroom/cask/drop-to-gif
brew install Caskroom/cask/tunnelbear
brew install Caskroom/cask/flash-player
# brew install Caskroom/cask/adobe-reader
brew install Caskroom/cask/adobe-creative-cloud
brew install Caskroom/cask/java
brew install Caskroom/cask/little-snitch
# brew install Caskroom/cask/security-growler
# brew install Caskroom/cask/liteicon
# brew install Caskroom/cask/macclean
# brew install Caskroom/cask/remote-desktop-connection
# brew install Caskroom/cask/google-chrome-canary
# brew install Caskroom/cask/mou
# brew install Caskroom/cask/miro-video-converter
# brew install Caskroom/cask/onyx
# brew install Caskroom/cask/opera
# brew install Caskroom/cask/opera-developer
# brew install Caskroom/cask/opera-next
# brew install Caskroom/cask/tor-browser
# brew install Caskroom/cask/transmission
# brew install Caskroom/cask/ukelele
brew install Caskroom/cask/plex-media-server
brew install Caskroom/cask/slack
brew install Caskroom/cask/caffeine
brew install Caskroom/cask/flux
brew install Caskroom/cask/thyme
brew install Caskroom/cask/selfcontrol
# brew install Caskroom/cask/endurance
brew install Caskroom/cask/qlstephen
brew install Caskroom/cask/qlmarkdown
brew install Caskroom/cask/quicklook-json
brew install Caskroom/cask/qlprettypatch
brew install Caskroom/cask/quicklook-csv
brew install Caskroom/cask/betterzipql
brew install Caskroom/cask/qlimagesize
brew install Caskroom/cask/webpquicklook
brew install Caskroom/cask/suspicious-package
brew install Caskroom/cask/blockblock

# Install developer apps
brew install Caskroom/cask/airserver
brew install Caskroom/cask/atom
brew install Caskroom/cask/cyberduck
# brew install Caskroom/cask/fontprep
brew install Caskroom/cask/imagealpha
brew install Caskroom/cask/imageoptim
brew install Caskroom/cask/iterm2
brew install Caskroom/cask/sequel-pro
brew install Caskroom/cask/sourcetree
brew install Caskroom/cask/dash
brew install Caskroom/cask/virtualbox
brew install Caskroom/cask/postman
brew install Caskroom/cask/genymotion
# brew install Caskroom/cask/vagrant
# brew install Caskroom/cask/vagrant-manager
# brew install Caskroom/cask/docker
# brew install Caskroom/cask/docker-machine
# brew install Caskroom/cask/docker-compose
# brew install Caskroom/cask/kitematic
# brew install Caskroom/cask/robomongo
# brew install Caskroom/cask/owasp-zap
# brew install Caskroom/cask/integrity
# brew install Caskroom/cask/silverback
# brew install Caskroom/cask/android-studio
# brew install Caskroom/cask/mocksmtp
# brew install Caskroom/cask/charles
# brew install Caskroom/cask/lynxlet
# brew install Caskroom/cask/xscope
# brew install Caskroom/cask/sublime-text
# brew install Caskroom/cask/visual-studio-code
# brew install Caskroom/cask/kaleidoscope
# brew install Caskroom/cask/macvim
# brew install Caskroom/cask/google-web-designer
# brew install Caskroom/cask/eclipse-ide
brew install Caskroom/cask/colorpicker-skalacolor
brew install Caskroom/cask/zeplin
brew install Caskroom/cask/qlcolorcode

brew install homebrew/php/composer
brew install homebrew/binary/ngrok2

# Remove download cache
brew cask cleanup
