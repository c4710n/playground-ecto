defmodule Demo.Repo.PG do
  use Ecto.Repo,
    otp_app: :demo,
    adapter: Ecto.Adapters.Postgres
end
