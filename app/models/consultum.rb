class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :Medico

  validates_associated :Medico
  validates_associated :Paciente

  validates :medico, length: { minimum: 4 }
  validates :medico, presence: true
  validates :medico, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validates :paciente, length: { minimum: 4 }
  validates :paciente, presence: true
  validates :paciente, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  #validates :data_hora,
  validates :data_hora, presence: true
  validate :validarData

  def validarData
    if data_hora.present? && data_hora < Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end
end
