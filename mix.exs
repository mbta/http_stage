defmodule HttpStage.MixProject do
  use Mix.Project

  @name "HttpStage"
  @version "0.2.0"
  @source_url "https://github.com/mbta/http_stage"

  def project do
    [
      name: @name,
      source_url: @source_url,
      version: @version,
      app: :http_stage,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      test_coverage: [tool: LcovEx]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bypass, "~> 2.1", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.38", only: :dev, runtime: false},
      {:gen_stage, "~> 1.2"},
      {:httpoison, "~> 2.1"},
      {:lcov_ex, "~> 0.3", only: [:dev, :test], runtime: false},
      {:plug, "~> 1.14"},
      {:req, "~> 0.5"},
      {:sobelow, "~> 0.13", only: [:dev, :test], runtime: false},
      {:stream_data, "~> 1.2.0", only: :test}
    ]
  end

  defp package do
    [
      name: @name,
      description: "HttpStage is a GenStage producer for data available via an HTTP GET request.",
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: [
        "README.md"
      ]
    ]
  end
end
