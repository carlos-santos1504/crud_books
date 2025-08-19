defmodule CrudBooks.Books do
  alias CrudBooks.Books.Book

  def create_book(attrs) do
    %Book{}
    |> Book.changeset(attrs)
    |> Repo.insert()
  end

  def get_book!(id) do
    Repo.get!(Book, id)
  end

  def update_book(%Book{} = book, attrs) do
    book
    |> Book.changeset(attrs)
    |> Repo.update()
  end

  def delete_book(%Book{} = book) do
    Repo.delete(book)
  end

  def list_books do
    Repo.all(Book)
  end
end
