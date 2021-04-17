set -x GOPATH $HOME/.go

for p in $GOPATH
    set PATH $p/bin $PATH
end
