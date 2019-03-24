defmodule InstacookapiAggregatorWeb.Router do
  use InstacookapiAggregatorWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstacookapiAggregatorWeb do
    pipe_through :api
  end
end
