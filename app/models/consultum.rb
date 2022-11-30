class Consultum < ApplicationRecord
  belongs_to :agenda
  belongs_to :paciente

  validates :medico, length: { minimum: 4 }
  validates :medico, presence: true
  validates :medico, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validates :paciente, length: { minimum: 4 }
  validates :paciente, presence: true
  validates :paciente, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  #validates :data_hora,
  validates :data_hora, presence: true
  #validates :data_hora,
end
