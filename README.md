# Playground for Ecto

## Setup

```sh
$ nix-shell -p shell.nix
$ mix deps.get
$ mix ecto.create
$ mix ecto.migrate

# ready to play
$ iex -S mix
```
