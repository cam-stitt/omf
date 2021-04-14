set PATH $PATH /usr/local/go/bin

set -x DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

set -x GPG_TTY (tty)

set PATH $PATH $HOME/.rbenv/bin
set PATH $PATH $HOME/.rbenv/plugins/ruby-build/bin
set PATH $HOME/.rbenv/shims $PATH

rbenv init - | source

if test -f "local.fish"
    source local.fish
end