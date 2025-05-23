# HttpStage

A GenStage Producer which fulfills demand by fetching from an HTTP Server.

<!-- TODO: Uncomment once the docs are published to HexDocs
  [Docs](https://hexdocs.pm/http_stage) 
-->

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `http_stage` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:http_stage, "~> 0.2.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/http_stage>.

## Usage

Configure HttpStage with the data URL and any request options as a child of your GenStage Supervisor.

```elixir
opts = [
  headers: %{"Authorization" => auth_key},
  params: %{verbose: "true"}
]

Supervisor.child_spec(
  {
    HttpStage,
    {"https://example.com/data/source.json", [name: :example_http_data, parser: MyApp.ExampleHttpDataParser] ++ opts}
  },
  id: :example_http_data
)
```
