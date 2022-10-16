defmodule TwitterLike.Repo do
  use Ecto.Repo,
    otp_app: :twitter_like,
    adapter: Ecto.Adapters.Postgres
end
