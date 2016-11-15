```sh
[sudo] docker build -t nodejs .
[sudo] docker run --rm -i -v "${PWD}:/opt" nodejs "$@"
```

```sh
alias tsc='docker run --rm -i -v "${PWD}:/opt" nodejs'
```
