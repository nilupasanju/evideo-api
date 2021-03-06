import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :evideo, Evideo.Repo,
  username: "nilu",
  password: "",
  database: "evideo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :evideo, EvideoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "S5KkWSNnT6lFFo+I3JrbSRXEh80awsxDnsrtQY2hPn2RlOYcNvsl5XkRzDqrraDG",
  server: false

# In test we don't send emails.
config :evideo, Evideo.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
