import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hasher, HasherWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "1pdcz3X9UFR/3yRxSE/C23gZ3M7V86WBA4KGkkXxv3lMWkA/4ZfY1XvtbvKVbvDg",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
