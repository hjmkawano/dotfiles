set -x GOPATH $HOME
set -x GO111MODULE auto

for p in $GOPATH
    set PATH $p/bin $PATH
end
