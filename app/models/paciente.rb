class Paciente < ApplicationRecord
  belongs_to :consultorio
  has_one :consultums, dependent: :destroy
  has_one :endereco, dependent: :destroy
end
