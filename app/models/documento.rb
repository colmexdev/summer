class Documento < ApplicationRecord
  before_save :delete_documento, if: -> {documento_del == 1}
  attr_accessor :documento_del

  has_attached_file :documento, url: 'assets/documentos/:basename-:id.:extension', path: ':rails_root/public/assets/documentos/:basename-:id.:extension'
  validates_attachment_presence :documento
  validates_attachment_content_type :documento, content_type: ['image/jpg', 'image/png', 'image/jpeg']

  protected

  def delete_documento
    self.documento = nil
  end
end
