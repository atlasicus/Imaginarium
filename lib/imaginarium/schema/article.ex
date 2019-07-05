defmodule Schema.Article do
    use Ecto.Schema

    schema "article" do
        field :content, :string
        field :date, :naive_datetime
        field :category, :integer
        has_many :user, Schema.user
    end
end