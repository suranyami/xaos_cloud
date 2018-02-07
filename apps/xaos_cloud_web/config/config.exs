# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :xaos_cloud_web,
  namespace: XaosCloudWeb,
  ecto_repos: [XaosCloud.Repo]

# Configures the endpoint
config :xaos_cloud_web, XaosCloudWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pYne9noPMbErg0Q/mNO+/lu/1IcnINAbN65GX8rIfgCxWhxANCdpgBLixn85uAL0",
  render_errors: [view: XaosCloudWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: XaosCloudWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :xaos_cloud_web, :generators,
  context_app: :xaos_cloud

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
