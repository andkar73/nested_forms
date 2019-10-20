defmodule NestedFormsWeb.PageController do
  use NestedFormsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
