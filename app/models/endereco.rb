class Endereco < ApplicationRecord
      belongs_to :paciente
      validates :cep, numericality: { only_integer: true }, presence: true, length: { is: 8 }
      validates :cidade, format: { with: /\A[a-zA-Z]+\z/}, presence: true, length: { minimum: 4}
      validates :bairro, format: { with: /\A[a-zA-Z]+\z/}, presence: true, length: { in: 4..30 }
      validates :logradouro, format: { with: /\A[a-zA-Z]+\z/ }, presence: true, length: { in: 4..40 }
      validates :complemento, format: { with: /\A[a-zA-Z]+\z/}, presence: true, length: { in: 4..100 }


end

