```sh
[sudo] docker build -t eslint .
[sudo] docker run -v "${PWD}:/opt" -i eslint "$@"
```

```sh
alias eslint='docker run -v "${PWD}:/opt" -i eslint'
```
