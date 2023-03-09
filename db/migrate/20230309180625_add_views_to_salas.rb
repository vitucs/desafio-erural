class AddViewsToSalas < ActiveRecord::Migration[6.1]
  def change
    add_column :salas, :views, :integer
  end
end
