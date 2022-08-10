# Playground for [Ecto](https://github.com/elixir-ecto/ecto)

Explore and compare different databases within Ecto in a very easy way.

## Features

- support multiple types of databases, such as PostgreSQL, MySQL.
- pre-set commonly used associations:
  - `1 - 1`
  - `1 - N`
  - `N - N`
- pre-install [ecto_dev_logger](https://github.com/fuelen/ecto_dev_logger) for more intuitive logs.

## Setup

### setup environment

```sh
$ nix-shell -p shell.nix
```

Or, install Elixir manually.

### install deps

```sh
$ mix deps.get
```

### configure databases

Configure options in `config/config.exs` to match your condition.

## Ready to play

```sh
# setup database
$ mix ecto.setup

# enter IEx
$ iex -S mix

# reset to original state
$ mix ecto.reset
```

## Notes

- All repos share same migrations.

## License

Apache License 2.0
