```sh
[sudo] docker build -t typescript .
[sudo] docker run --rm -i -v "${PWD}:/opt" typescript "$@"
```

```sh
alias tsc='docker run --rm -i -v "${PWD}:/opt" typescript'
```
