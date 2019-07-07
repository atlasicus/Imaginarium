defmodule Imaginarium.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :hash, :string
    field :name, :string
    field :salt, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :salt, :hash])
    |> validate_required([:name, :salt, :hash])
  end
end
