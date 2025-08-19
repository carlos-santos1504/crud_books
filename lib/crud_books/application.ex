defmodule CrudBooks.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      CrudBooksWeb.Telemetry,
      CrudBooks.Repo,
      {DNSCluster, query: Application.get_env(:crud_books, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: CrudBooks.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: CrudBooks.Finch},
      # Start a worker by calling: CrudBooks.Worker.start_link(arg)
      # {CrudBooks.Worker, arg},
      # Start to serve requests, typically the last entry
      CrudBooksWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CrudBooks.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CrudBooksWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
