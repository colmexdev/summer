class AddCargoToResponsable < ActiveRecord::Migration[5.0]
  def change
    add_column :responsables, :cargo_en, :text
  end
end
