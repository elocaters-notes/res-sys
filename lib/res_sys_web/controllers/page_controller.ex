defmodule ResSysWeb.PageController do
  use ResSysWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
