defmodule CrudBooks.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  @fields ~w(title author published_year category_id)a

  schema "books" do
    field :title, :string
    field :author, :string
    field :published_year, :integer
    belongs_to :category, CrudBooks.Category
    timestamps()

  end

  def changeset(book, attrs) do
    book
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end
