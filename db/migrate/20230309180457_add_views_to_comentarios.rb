class AddViewsToComentarios < ActiveRecord::Migration[6.1]
  def change
    add_column :comentarios, :views, :integer
  end
end
