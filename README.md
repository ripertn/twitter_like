# TwitterLike


Inspired by video of Chris McCord showing how to efficiently build a twitter like with phoenix

Personnal inputs to the project:
  - using phoenix 1.6 which means
    - no need to specify --live since liveview is set by default
    - esbuild instead of webpack as bundler
  - add svg icons on views




To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix



# twitter_like devlog


  - mix phx.gen.live Timeline Post posts username body likes_count:integer reposts_count:integer
  - create user postwitter, pwd born2twit and database postwitter
  - create TwitterLikeWeb.Utils.IconUtils module to handle svg, and add several svg to the code
