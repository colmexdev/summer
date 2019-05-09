class CategoriaCurso < ApplicationRecord
  before_destroy :delete_temas
  after_save :update_temas

  validates_presence_of :categoria
  validates_presence_of :categoria_en

  protected

  def delete_temas
    Tema.where("categoria = ?", self.categoria).destroy_all
  end

  def update_temas
    Tema.where("categoria = ?", self.categoria_was).update_all(categoria: self.categoria)
  end

end
