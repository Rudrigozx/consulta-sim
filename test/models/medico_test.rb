require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "Salvar o medico com crm invalido" do
    @medico = Medico.new nome:"Ricardo",
                         cpf:"12378945652",
                         email:"ricardo@gmail.com",
                         especialidade:"cardiologista",
                         crm:'arroz'

    assert_not @medico.save
  end

  test "Salvar o medico sem especialidade" do
    @medico = Medico.new nome:"Ricardo",
                         cpf:"12378945652",
                         email:"ricardo@gmail.com",
                         especialidade:"",
                         crm:123456

    assert_not @medico.save
  end
end
