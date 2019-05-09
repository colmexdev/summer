class AddDocumentoToTema < ActiveRecord::Migration[5.0]
  def change
    add_attachment :temas, :documento
  end
end
