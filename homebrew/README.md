# Homebrew

## Install all common tools from the Brewfile (destination machine)

```shell
$ brew bundle --file=./Brewfile
```

## Create a Brewfile on another machine (source machine)

```shell
$ brew bundle dump
```

This will create the `Brewfile` in the directory where you were
