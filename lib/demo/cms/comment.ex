defmodule Demo.CMS.Comment do
  use Ecto.Schema

  alias Demo.CMS.Post

  schema "comments" do
    field :nickname, :string
    field :email, :string
    field :body, :string
    belongs_to :post, Post

    timestamps()
  end
end
