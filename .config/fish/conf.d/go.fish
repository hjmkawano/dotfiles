set -x GOPATH $HOME/src

for p in $GOPATH
    set PATH $p/bin $PATH
end
