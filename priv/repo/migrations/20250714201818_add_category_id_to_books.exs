defmodule CrudBooks.Repo.Migrations.AddCategoryIdToBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :category_id, references(:categories, on_delete: :nothing)
    end

    create index(:books, [:category_id])
  end
end
