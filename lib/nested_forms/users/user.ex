defmodule NestedForms.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    has_many :posts, NestedForms.Users.Post

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> cast_assoc(:posts)
    |> validate_required([:name])
  end
end
