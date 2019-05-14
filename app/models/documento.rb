class Documento < ApplicationRecord

  has_attached_file :documento, url: 'assets/documentos/:basename-:id.:extension', path: ':rails_root/public/assets/documentos/:basename-:id.:extension'
  validates_attachment_presence :documento
  validates_attachment_content_type :documento, content_type: ['image/jpg', 'image/png', 'image/jpeg']

end
