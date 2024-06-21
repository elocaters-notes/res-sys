defmodule ResSysWeb.Router do
  use ResSysWeb, :router
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ResSysWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ResSysWeb do
    pipe_through :browser

    get "/", PageController, :home
    live "/new_character", NewCharacterLive
  end
end
