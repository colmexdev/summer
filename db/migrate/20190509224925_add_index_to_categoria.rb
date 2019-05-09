class AddIndexToCategoria < ActiveRecord::Migration[5.0]
  def change
    add_column :categoria_cursos, :index, :integer
  end
end
