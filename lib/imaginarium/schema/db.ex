defmodule Schema.User do
    use Ecto.Schema

    schema "user" do   
        field :name, :string
        field :salt, :string
        field :hash, :string
    end
end

defmodule Schema.Article do
    use Ecto.Schema

    schema "article" do
        field :title, :string
        field :content, :string
        field :category, :integer
        field :chapter, :integer
        field :page, :integer
        has_many :user, Schema.User
        has_many :tag, Schema.Tag
    end
end

defmodule Schema.Sequence do
    use Ecto.Schema

    schema "sequence" do
        field :direction, :string
    end
end

defmodule Schema.ArticleSequence do
    use Ecto.Schema

    schema "article_sequence" do
        has_many :article, Schema.Article
        has_many :sequence, Schema.Sequence
    end   
end

defmodule Schema.Tag do
    use Ecto.Schema

    schema "tag" do
        field :name, :string
    end
end

defmodule Schema.ArticleTag do
    use Ecto.Schema

    schema "article_tag" do
        has_many :article, Schema.Article
        has_many :tag, Schema.Tag
    end
end