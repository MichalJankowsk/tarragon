defmodule Tarragon.Repo.Migrations.CreateUserCharacters do
  use Ecto.Migration

  def change do
    create table(:user_characters) do
      add :nickname, :string
      add :max_health, :integer
      add :current_health, :integer
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:user_characters, [:user_id])
  end
end
