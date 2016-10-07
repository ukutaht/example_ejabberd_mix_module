defmodule ExampleEjabberdMixModule.Mixfile do
  use Mix.Project

  def project do
    [app: :example_ejabberd_mix_module,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :ejabberd]]
  end

  defp deps do
    [
      {:ejabberd, ">= 16.08.0", github: "processone/ejabberd"}
    ]
  end
end
