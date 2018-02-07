use Mix.Config

# Configure your database
config :xaos_cloud, XaosCloud.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xaos_cloud_dev",
  hostname: "localhost",
  pool_size: 10
