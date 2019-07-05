defmodule Schema.Sequence do
    use Ecto.Schema

    schema "sequence" do
        field :name, :string
    end
end

defmodule Schema.ArticleSequence do
    use Ecto.Schema

    has_many :article, Schema.article
    has_many :sequence, Schema.sequence   
end