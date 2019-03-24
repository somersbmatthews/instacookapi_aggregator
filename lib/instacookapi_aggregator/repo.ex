defmodule InstacookapiAggregator.Repo do
  use Ecto.Repo,
    otp_app: :instacookapi_aggregator,
    adapter: Ecto.Adapters.Postgres
end
