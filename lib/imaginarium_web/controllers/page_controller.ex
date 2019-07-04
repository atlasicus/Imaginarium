defmodule ImaginariumWeb.PageController do
  use ImaginariumWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
