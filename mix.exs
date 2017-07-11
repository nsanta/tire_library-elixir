defmodule TireLibrary.Mixfile do
  use Mix.Project

  def project do
    [app: :tire_library,
    description: "Tire Library API client for Elixir",
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.12"},
      {:exjsx, git: "https://github.com/talentdeficit/exjsx.git"},
      {:ex_doc, ">= 0.13.0", only: :dev}
    ]
  end

  def application do
    [ applications: [:httpoison] ]
  end

  defp package do
    [
      maintainers: [" Nicolas Santa "],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/nsanta/tire_library-elixir"}
    ]
  end
  defp aliases do
    [c: "compile"]
  end
end
