```sh
[sudo] docker build -t eslint .
[sudo] docker run --rm -i -v "${PWD}:/opt" eslint "$@"
```

```sh
alias eslint='docker run --rm -i -v "${PWD}:/opt" eslint'
```
