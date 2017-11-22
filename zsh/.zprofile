export PATH=$HOME/bin:$HOME/.stack/programs/x86_64-linux/ghc-8.0.2/bin:$HOME/.local/bin:/usr/bin/vendor_perl:HOME/.gem/ruby/2.2.0/bin:$HOME/.cabal/bin:/opt/android-sdk/platform-tools:$PATH
which vimb > /dev/null && export BROWSER=vimb || export BROWSER=firefox

if which nvim > /dev/null ; then
    if test -n "$NVIM_LISTEN_ADDRESS" ; then
        export EDITOR="nvr --remote"

        preexec () { nvr -c ":file \"$3\"" ; }
    else
        export EDITOR=nvim
    fi
else
    export EDITOR=vim
fi

export _JAVA_AWT_WM_NONREPARENTING=1
export MAGNET_DIR="$HOME/torrents/.watch"
export DOWNLOAD_DIR="$HOME/downloads"
export DMENU_OPTIONS="-dim 0.3 -fn 'DejaVu' -x 340 -y 192 -w 683 -l 15 -r -p '$ '"
