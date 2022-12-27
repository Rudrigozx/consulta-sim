class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :Medico
  validates :data_hora, presence: true
  validate :validarData

  def validarData
    if data_hora.present? && data_hora < Date.today
      errors.add(:data_hora, "Data invalida")
    end
  end
end


