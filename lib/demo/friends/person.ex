defmodule Demo.Friends.Person do
  use Ecto.Schema

  schema "persons" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer

    timestamps()
  end
end
