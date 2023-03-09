class AddNomeToSalas < ActiveRecord::Migration[6.1]
  def change
    add_column :salas, :nome, :string
  end
end
