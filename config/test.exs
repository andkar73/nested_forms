use Mix.Config

# Configure your database
config :nested_forms, NestedForms.Repo,
  username: "postgres",
  password: "postgres",
  database: "nested_forms_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nested_forms, NestedFormsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
