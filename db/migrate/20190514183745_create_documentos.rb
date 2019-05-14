class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.text :titulo
      t.attachment :documento

      t.timestamps
    end
  end
end
