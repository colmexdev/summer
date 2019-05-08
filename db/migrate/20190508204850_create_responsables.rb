class CreateResponsables < ActiveRecord::Migration[5.0]
  def change
    create_table :responsables do |t|
      t.text :nombre
      t.text :cargo
      t.text :extension

      t.timestamps
    end
  end
end
