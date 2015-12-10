```sh
[sudo] docker build -t ember-cli-babel .
[sudo] docker run --rm -i -v "${PWD}:/opt" -p 4200:4200 -p 49152:49152 ember-cli-babel "$@"
```

```sh
alias ember='docker run --rm -i -v "${PWD}:/opt" -p 4200:4200 -p 49152:49152 ember-cli-babel ember'
alias bower='docker run --rm -i -v "${PWD}:/opt" -p 4200:4200 -p 49152:49152 ember-cli-babel bower'
```
