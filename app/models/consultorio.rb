class Consultorio < ApplicationRecord
  has_many :Medico, dependent: :destroy
  has_many :Paciente, dependent: :destroy
end
