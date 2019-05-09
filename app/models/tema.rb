class Tema < ApplicationRecord

  validates_presence_of :tema
  validates_presence_of :tema_en
  validates_presence_of :categoria
  has_attached_file :documento, :styles => {},
                    :url => "/assets/temas_docs/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/temas_docs/:id/:style/:basename.:extension",
                    :default_url => "/vacio.png"
  validates_attachment_content_type :documento, :content_type => ['application/pdf', 'image/jpeg', 'image/png', 'image/jpg']
end
