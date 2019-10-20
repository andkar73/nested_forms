defmodule NestedFormsWeb.UserView do
  use NestedFormsWeb, :view

  alias NestedForms.Users
  alias NestedForms.Users.User
  alias NestedForms.Users.Post

  def link_to_post_fields do
    changeset = Users.change_user(%User{posts: [%Post{}]})
    form = Phoenix.HTML.FormData.to_form(changeset, [])
    fields = render_to_string(__MODULE__, "post_fields.html", f: form)
    link "Add Post", to: "#", "data-template": fields, id: "add_post"
  end
end
