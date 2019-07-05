defmodule Schema.User do
    use Ecto.Schema

    schema "user" do   
        field :user_id, :integer
        field :name, :string
        field :salt, :string
        field :hash, :string
    end
end