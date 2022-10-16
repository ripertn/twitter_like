defmodule TwitterLikeWeb.PageController do
  use TwitterLikeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
