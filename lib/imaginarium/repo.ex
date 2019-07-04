defmodule Imaginarium.Repo do
  use Ecto.Repo,
    otp_app: :imaginarium,
    adapter: Ecto.Adapters.Postgres
end
