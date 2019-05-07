class Fecha < ApplicationRecord

  validates_presence_of :desc_es
  validates_presence_of :desc_en
  validates_presence_of :fecha_i
  validates_presence_of :fecha_f

end
