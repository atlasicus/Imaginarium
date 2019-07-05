defmodule Schema.Tag do
    use Ecto.Schema

    schema "tag" do
        field :name, :string
    end
end

defmodule Schema.ArticleTag do
    use Ecto.Schema

    schema "article_tag" do
        has_many :article, Schema.article
        has_many :tag, Schema.tag
    end
end