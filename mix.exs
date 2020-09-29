defmodule BamboohrApi.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :bamboohr_api,
      deps: deps(),
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      version: @version
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:exvcr, "~> 0.11.2", only: :test},
      {:hackney, "~> 1.16.0"},
      {:jason, "~> 1.2.2"},
      {:tesla, "~> 1.3.3"}
    ]
  end
end
