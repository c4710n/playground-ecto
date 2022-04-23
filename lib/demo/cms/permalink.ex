defmodule Demo.CMS.Permalink do
  use Ecto.Schema

  alias Demo.CMS.Post

  schema "permalinks" do
    field :url, :string
    belongs_to :post, Post

    timestamps()
  end
end
