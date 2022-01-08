defmodule Deuce.Repo do
  use Ecto.Repo,
    otp_app: :deuce,
    adapter: Ecto.Adapters.Postgres
end
