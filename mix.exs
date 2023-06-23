defmodule HttpStage.MixProject do
  use Mix.Project

  def project do
    [
      app: :http_stage,
      version: "0.2.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:gen_stage, "~> 1.2"},
      {:plug, "~> 1.14"},
      {:req, "~> 0.3.0"},
      {:stream_data, "~> 0.5.0", only: :test}
    ]
  end
end
