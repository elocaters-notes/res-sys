defmodule ResSysWeb.NewCharacterLive do
  use Phoenix.LiveView
  import Phoenix.Component

  def render(assigns) do
    ~H"""
    <.form for={@character} phx-change="validate">
      <div style="display: flow">
        <label for="character_name">Character Name: </label>
        <input type="text" id="character_name" value={@character["name"]} />
      </div>
      <div style="display: flow">
        <label for="eventide">Eventide: </label>
        <input type="text" id="eventide" value={@character["eventide"]} />
      </div>
    </.form>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, %{character: %{"name" => nil}})}
  end

  def handle_event("validate", _params, socket) do
    {:noreply, update(socket, :character, & &1)}
  end
end
