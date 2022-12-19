class Medico < ApplicationRecord
    has_many :consultums, dependent: :destroy
    has_many :pacientes, through: :consultums
    validates :nome, length: { minimum: 4 }, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :cpf, length: { is: 11 }, presence: true, numericality: { only_integer: true }, uniqueness: true
    validates :email, length: { minimum: 11 }, presence: true, uniqueness: true
    validates :especialidade, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true, length: { in: 4..20 }
    validates :crm, numericality: { only_integer: true }, presence: true, uniqueness: true
end
