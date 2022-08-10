defmodule Demo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    repos = [
      Demo.Repo.PG,
      Demo.Repo.MySQL
    ]

    setup_ecto_dev_logger(repos)

    children = Enum.map(repos, &{&1, []})

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Demo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp setup_ecto_dev_logger(repos) when is_list(repos) do
    for repo <- repos do
      Ecto.DevLogger.install(repo)
    end
  end
end
