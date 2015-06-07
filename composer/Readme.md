```sh
[sudo] docker build -t composer .
[sudo] docker run --rm -i -v "${PWD}:/opt" composer "$@"
```

```sh
alias eslint='docker run --rm -i -v "${PWD}:/opt" composer'
```
