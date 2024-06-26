defmodule Backoffice.MixProject do
  use Mix.Project

  def project do
    [
      app: :backoffice,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix] ++ Mix.compilers(),
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
      {:phoenix, "~> 1.6.6"},
      {:phoenix_live_view, "~> 0.18.0"},
      {:phoenix_html, "~> 3.0"},
      {:ecto_sql, "~> 3.6"},
      {:jason, "~> 1.2"},
      {:mox, "~> 1.0", only: :test}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
