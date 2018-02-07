defmodule XaosCloud.Application do
  @moduledoc """
  The XaosCloud Application Service.

  The xaos_cloud system business domain lives in this application.

  Exposes API to clients such as the `XaosCloudWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(XaosCloud.Repo, []),
    ], strategy: :one_for_one, name: XaosCloud.Supervisor)
  end
end
