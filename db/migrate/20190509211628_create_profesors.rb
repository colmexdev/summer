class CreateProfesors < ActiveRecord::Migration[5.0]
  def change
    create_table :profesors do |t|
      t.text :nombre
      t.text :sitio

      t.timestamps
    end
  end
end
