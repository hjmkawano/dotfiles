set -x GOPATH $HOME/go
set -x GO111MODULE on

for p in $GOPATH
    set PATH $p/bin $PATH
end
