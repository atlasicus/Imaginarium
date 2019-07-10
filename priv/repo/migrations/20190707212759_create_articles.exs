defmodule Imaginarium.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      
      timestamps()
    end

  end
end
