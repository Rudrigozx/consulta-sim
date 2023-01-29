Feature: Medico
  As a Medico
  I want to criar, visualizar, atualizar e deletar meu cadastro
  So that automatizar e facilizar o atendimento das minhas consultas

  Scenario: editar especialidade de medico
    Given eu estou na pagina de medico
    And eu vejo um medico com crm "12378"
    When eu clico no medico com crm "12378"
    And eu clico em editar o medico com crm "12378" e atualizo especialidade para "pediatra"
    Then eu recebo uma mensagem que avisa que o medico com crm "12378" foi atualizado

  Scenario: visualizar medico
    Given eu estou na pagina de medico
    And eu vejo um medico com crm "12378"
    When eu clico no medico com crm "12378"
    Then eu vejo todas as informações do medico com crm "12378"