require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "Salvar consulta sem data" do
    @medico = Medico.new nome:"Ricardo",
                         cpf:"12378945652",
                         email:"ricardo@gmail.com",
                         especialidade:"cardiologista",
                         crm:123456
    assert @medico.save
    @paciente = Paciente.new nome: 'Rodrigo',
                            cpf:78964235450,
                            email: "rodrigo@gmail.com",
                            data_de_nascimento: "2002-05-06",
                            endereco_attributes:{ cep: 55298165,
                                                  logradouro: "rua do zekinha",
                                                  cidade: 'Garanhuns',
                                                  bairro: "Heliopes",
                                                  complemento: 'proximo ao posto',
                            }
    assert @paciente.save
    @consulta = Consultum.new data_hora:"",
                             paciente_id: @paciente.id,
                             medico_id: @medico.id
    assert_not @consulta.save
  end

  test "Salvar consulta sem dados" do
    @consulta = Consultum.new
    assert_not @consulta.save
  end

end
