use Mix.Config

config :xaos_cloud, ecto_repos: [XaosCloud.Repo]

import_config "#{Mix.env}.exs"
