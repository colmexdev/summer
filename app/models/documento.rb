class Documento < ApplicationRecord
  before_save :delete_documento, if: -> {documento_del == 1}
  attr_accessor :documento_del

  has_attached_file :documento, url: '/assets/documentos/:id/:basename.:extension', path: ':rails_root/public/assets/documentos/:id/:basename.:extension', default_url: '/vacio.png'
  validates_attachment_presence :documento
  validates_attachment_content_type :documento, content_type: ['application/pdf', 'image/png']

  protected

  def delete_documento
    self.documento = nil
  end
end
