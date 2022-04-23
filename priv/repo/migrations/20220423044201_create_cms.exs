defmodule Demo.Repo.Migrations.CreateCms do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :string, null: false
      add :bio, :string

      timestamps()
    end

    create unique_index(:authors, [:name])

    create table(:posts) do
      add :title, :string, null: false
      add :body, :text, null: false

      add :author_id,
          references(:authors, on_delete: :delete_all, on_update: :update_all),
          null: false

      timestamps()
    end

    create table(:permalinks) do
      add :url, :string, null: false
      add :post_id, references(:posts), null: false

      timestamps()
    end

    create unique_index(:permalinks, [:post_id])

    create table(:comments) do
      add :nickname, :string, null: false
      add :email, :string
      add :body, :text, null: false
      add :post_id, references(:posts), null: false

      timestamps()
    end

    create table(:tags) do
      add :name, :string, null: false

      timestamps()
    end

    create table(:posts_tags, primary_key: false) do
      add :post_id, references(:posts, on_delete: :delete_all, on_update: :update_all)
      add :tag_id, references(:tags, on_delete: :delete_all, on_update: :update_all)
    end

    create unique_index(:posts_tags, [:post_id, :tag_id])
    create index(:posts_tags, [:post_id])
    create index(:posts_tags, [:tag_id])
  end
end
