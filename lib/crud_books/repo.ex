defmodule CrudBooks.Repo do
  use Ecto.Repo,
    otp_app: :crud_books,
    adapter: Ecto.Adapters.Postgres
end
