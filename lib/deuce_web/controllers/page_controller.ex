defmodule DeuceWeb.PageController do
  use DeuceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
