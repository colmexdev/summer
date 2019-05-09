class Tema < ApplicationRecord

  validates_presence_of :tema
  validates_presence_of :tema_en
  validates_presence_of :categoria

end
