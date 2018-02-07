use Mix.Config

# Configure your database
config :xaos_cloud, XaosCloud.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xaos_cloud_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
