class CreateCategoriaCursos < ActiveRecord::Migration[5.0]
  def change
    create_table :categoria_cursos do |t|
      t.text :categoria
      t.text :categoria_en

      t.timestamps
    end
  end
end
