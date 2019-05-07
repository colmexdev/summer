class CreateFechas < ActiveRecord::Migration[5.0]
  def change
    create_table :fechas do |t|
      t.text :desc_es
      t.text :desc_en
      t.date :fecha_i
      t.date :fecha_f

      t.timestamps
    end
  end
end
