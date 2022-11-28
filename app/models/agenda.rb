class Agenda < ApplicationRecord
  belongs_to :medico
  has_many :consulta, dependent: :destroy
end
