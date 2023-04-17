defmodule IntegrationsGrpc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: IntegrationsGrpc.Worker.start_link(arg)
      # {IntegrationsGrpc.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: IntegrationsGrpc.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
