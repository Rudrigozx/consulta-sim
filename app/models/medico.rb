class Medico < ApplicationRecord
    has_many :consultum, dependent: :destroy
    has_many :pacientes, through: :consultum
    validates :nome, length: { minimum: 4 }, presence: true
    validates :cpf, length: { is: 11 }, presence: true, numericality: { only_integer: true }, uniqueness: true
    validates :email, length: { minimum: 11 }, presence: true, uniqueness: true
    validates :especialidade, presence: true, length: { in: 4..20 }
    validates :crm, numericality: { only_integer: true }, presence: true, uniqueness: true
end
