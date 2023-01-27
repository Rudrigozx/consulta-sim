class Endereco < ApplicationRecord
  belongs_to :paciente
  validates :cep, numericality: { only_integer: true }, presence: true, length: { is: 8 }
  validates :cidade, presence: true, length: { minimum: 4}
  validates :bairro, presence: true, length: { in: 4..30 }
  validates :logradouro, presence: true, length: { in: 4..40 }
  validates :complemento, presence: true, length: { in: 4..100 }

end