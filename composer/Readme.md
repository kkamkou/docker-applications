```sh
[sudo] docker build -t composer .
[sudo] docker run --rm -i -v "${PWD}:/opt" composer "$@"
```

```sh
alias composer='docker run --rm -i -v "${PWD}:/opt" composer'
```
