defmodule Deuce.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Deuce.Repo,
      # Start the Telemetry supervisor
      DeuceWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Deuce.PubSub},
      # Start the Endpoint (http/https)
      DeuceWeb.Endpoint
      # Start a worker by calling: Deuce.Worker.start_link(arg)
      # {Deuce.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Deuce.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DeuceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
