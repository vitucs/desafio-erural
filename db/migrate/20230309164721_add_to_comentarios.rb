class AddToComentarios < ActiveRecord::Migration[6.1]
  def change
    add_column :comentarios, :text, :string
    add_column :comentarios, :author, :string
    add_column :comentarios, :video_id, :integer
  end
end
