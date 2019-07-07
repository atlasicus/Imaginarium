defmodule ImaginariumWeb.CreateController do
    use ImaginariumWeb, :controller

    def make(conn, %{"messenger" => messenger}) do
        user = %Imaginarium.User{name: messenger, salt: "xabby", hash: "pancakes"}
        Imaginarium.Repo.insert(user)
        output = "Created user with name " <> messenger

        render(conn, "index.html", messenger: output)
    end
end