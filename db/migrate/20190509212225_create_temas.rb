class CreateTemas < ActiveRecord::Migration[5.0]
  def change
    create_table :temas do |t|
      t.text :tema
      t.text :tema_en
      t.text :categoria
      t.text :profesor

      t.timestamps
    end
  end
end
