defmodule Imaginarium.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :salt, :string
      add :hash, :string

      timestamps()
    end

  end
end
