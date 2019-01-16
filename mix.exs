defmodule Http.MixProject do
  use Mix.Project

  def project do
    [
      app: :http,
      version: "0.1.0",
      elixir: "~> 1.9-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [],
      extra_applications: [:logger],
      mod: {Http.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_octopus, github: "jeffkreeftmeijer/plug_octopus"},
      {:plug, "~> 1.7"}
    ]
  end
end
