defmodule Demo.CMS.Tag do
  use Ecto.Schema

  alias Demo.CMS.Post

  schema "tags" do
    field :name, :string
    many_to_many :posts, Post, join_through: "posts_tags"

    timestamps()
  end
end
