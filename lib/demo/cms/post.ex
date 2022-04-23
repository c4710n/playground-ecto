defmodule Demo.CMS.Post do
  use Ecto.Schema

  alias Demo.CMS.Permalink
  alias Demo.CMS.Comment
  alias Demo.CMS.Tag
  alias Demo.CMS.Author

  schema "posts" do
    field :title, :string
    field :body, :string
    has_one :permalink, Permalink
    has_many :comments, Comment
    many_to_many :tags, Tag, join_through: "posts_tags"
    belongs_to :author, Author

    timestamps()
  end
end
