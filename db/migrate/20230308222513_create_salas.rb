class CreateSalas < ActiveRecord::Migration[6.1]
  def change
    create_table :salas do |t|
      t.string :url
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
