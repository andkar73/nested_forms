defmodule NestedForms.Repo do
  use Ecto.Repo,
    otp_app: :nested_forms,
    adapter: Ecto.Adapters.Postgres
end
