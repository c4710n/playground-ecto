defmodule Demo.CMS.Author do
  use Ecto.Schema

  alias Demo.CMS.Post

  schema "authors" do
    field :name, :string
    field :bio, :string
    has_many :posts, Post, on_replace: :nilify

    timestamps()
  end
end
