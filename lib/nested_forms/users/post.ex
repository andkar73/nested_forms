defmodule NestedForms.Users.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :delete, :boolean, virtual: true
    belongs_to :user,  NestedForms.Users.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :delete])
    |> set_delete_action(attrs)
    |> validate_required([:body])
  end

  defp set_delete_action(changeset, attrs) do
    if get_change(changeset, :delete) do
      %{changeset | action: :delete }
    else
      changeset
    end
  end
end
