Feature: Medico
  As a Medico
  I want to criar, visualizar, atualizar e deletar meu cadastro
  So that automatizar e facilizar o atendimento das minhas consultas

  Scenario: editar especialidade de medico para especialidade valida
    Given eu estou na pagina de medico
    And eu vejo um medico com crm 12378
    When eu clico em editar o medico e atualizo especialidade para "pediatra"
    Then eu recebo uma mensagem que avisa que o medico com crm 12378 foi atualizado

  Scenario: visualizar medicos
    Given eu estou na pagina de menu
    When eu clico em exibir medicos
    Then eu vejo todos os medicos e suas informações