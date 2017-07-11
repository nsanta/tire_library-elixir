defmodule TireLibrary.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      TireLibrary.Client.child_spec
    ]

    opts = [strategy: :one_for_one, name: TireLibrary.Supervisor]
    Supervisor.start_link(children, opts)
  end


end
