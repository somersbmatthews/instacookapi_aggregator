# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :instacookapi_aggregator,
  ecto_repos: [InstacookapiAggregator.Repo]

# Configures the endpoint
config :instacookapi_aggregator, InstacookapiAggregatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eAgcbVJEpH0zI8sAMktYh3PQ3fLLamWqRewktLrYnhblrK1ta2bVosRdsXfLT9Go",
  render_errors: [view: InstacookapiAggregatorWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InstacookapiAggregator.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"


config :commanded,
event_store_adapter: Commanded.EventStore.Adapters.EventStore

config :eventstore, EventStore.Storage,
serializer: Commanded.Serialization.JsonSerializer,
username: "postgres",
password: "postgres",
database: "eventstore_dev",
hostname: "localhost",
pool_size: 10