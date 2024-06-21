defmodule ResSys.Repo do
  use Ecto.Repo,
    otp_app: :res_sys,
    adapter: Ecto.Adapters.SQLite3
end
