defmodule CrudBooks.Repo.Migrations.CreateBooksTable do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :published_year, :integer
      timestamps()
    end
  end
end
