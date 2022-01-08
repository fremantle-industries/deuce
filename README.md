# Deuce
[![Build Status](https://github.com/fremantle-industries/deuce/workflows/test/badge.svg?branch=main)](https://github.com/fremantle-industries/deuce/actions?query=workflow%3Atest)
[![hex.pm version](https://img.shields.io/hexpm/v/deuce.svg?style=flat)](https://hex.pm/packages/deuce)

A pairs trading terminal for managing risk & volatility

## Installation

Add the `deuce` package to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:deuce, "~> 0.0.1"}
  ]
end
```

## Status

* [ ] View streaming volatility
* [ ] View streaming historical trades
* [ ] View current bid/ask
* [ ] Place shadow orders
* [ ] Execute shadow orders
* [ ] [Stream Deck Support](https://www.elgato.com/en/stream-deck-xl)

## Requirements

- Erlang 22+
- Elixir 1.12+

## Authors

- Alex Kwiatkowski - alex+git@fremantle.io

## License

`deuce` is released under the [MIT license](./LICENSE)
