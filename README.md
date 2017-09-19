# haskell-stack-link
Simple base image based on:
https://vadosware.io/post/static-binaries-for-haskell-a-convoluted-approach/
https://www.reddit.com/r/haskell/comments/5lk33p/struggling_building_a_static_binary_for_aws/

1. Adding `ld-options: static` to your cabal file.
2. Mounting the project directory.
3. Running `stack clean; stack install --split-objs --ghc-options="-fPIC"` (you cat put `-fllvm` as you like).
