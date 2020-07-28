# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_grid, LiveGridWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DzWZJTJlXhZLIKYqVFuw/p0Gpxi6C+eBU7A6Msj4B3qSqns6QSBxDWdTl3CW4lPr",
  render_errors: [view: LiveGridWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveGrid.PubSub,
  live_view: [signing_salt: "+fW2+N2E"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
