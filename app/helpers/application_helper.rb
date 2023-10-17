module ApplicationHelper
  def get_nav_items(signed_in)
    signed_in ? [
      {
        path: user_path(current_user),
        fa_class: "fa-solid fa-house",
        text: "Home"
      },
      {
        path: users_path,
        fa_class: "fa-solid fa-users",
        text: "Users"
      },
      {
        path: books_path,
        fa_class: "fa-solid fa-book-open",
        text: "Books"
      },
      {
        path: destroy_user_session_path,
        fa_class: "fa-solid fa-right-from-bracket",
        text: "Log out",
        method: :delete,
      }
    ] : [
      {
        path: "/",
        fa_class: "fa-solid fa-house",
        text: "Home"
      },
      {
        path: about_path,
        fa_class: "fa-solid fa-link",
        text: "About"
      },
      {
        path: new_user_registration_path,
        fa_class: "fa-solid fa-user-plus",
        text: "Sign in"
      },
      {
        path: new_user_session_path,
        fa_class: "fa-solid fa-right-to-bracket",
        text: "Log in"
      }
    ]
  end
end
