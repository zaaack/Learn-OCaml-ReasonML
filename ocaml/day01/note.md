## Tutorials
https://realworldocaml.org/v1/en/html
https://ocaml.org/learn/tutorials/index.zh.html

## Install
https://github.com/realworldocaml/book/wiki/Installation-Instructions
https://github.com/ocaml/merlin/wiki/Letting-merlin-locate-go-to-stuff-in-.opam
```sh

brew info ocaml
brew install ocaml opam
opam init
echo 'export OPAMKEEPBUILDDIR=true
export OCAMLPARAM="_,bin-annot=1"' >> ~/.zshrc
opam install core utop reason
```

.merlin
```sh
S .
B _build
PKG core
S /Users/z/.opam/system/build/core.113.33.02+4.03/_build
B /Users/z/.opam/system/build/core.113.33.02+4.03/_build
CMT /Users/z/.opam/system/build/core.113.33.02+4.03/_build
```

## Notes
1.
```sh
ocamlc -c <file> # 编译接口文件 mli
ocamlopt -c <file> # 编译源码文件 ml 引入模块需要根据运行目录(pwd)
```
