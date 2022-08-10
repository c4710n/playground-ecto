defmodule Demo.Repo.MySQL do
  use Ecto.Repo,
    otp_app: :demo,
    adapter: Ecto.Adapters.MyXQL
end
