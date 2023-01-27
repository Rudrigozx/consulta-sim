require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "Salvar o paciente sem atributos" do
    @paciente = Paciente.new
    assert_not @paciente.save
  end

  test "Salvar paciente com todos os atributos validos" do
    paciente = Paciente.new nome: 'Rodrigo',
                            cpf:78964235450,
                            email: "rodrigo@gmail.com",
                            data_de_nascimento: "2002-05-06",
                            endereco_attributes:{ cep: 55298165,
                                                  logradouro: "rua do zekinha",
                                                  cidade: 'Garanhuns',
                                                  bairro: "Heliopes",
                                                  complemento: 'proximo ao posto',
                            }
    assert paciente.save
  end
end
