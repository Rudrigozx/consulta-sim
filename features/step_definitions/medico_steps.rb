Given('eu estou na pagina de medico') do
  visit 'medicos/new'
  expect(page).to have_content("New medico")
end

Given('eu vejo um medico com crm {int}') do |crm|
  fill_in 'medico[nome]', with: 'Rodrigo leandro'
  fill_in 'medico[cpf]', with: '12398745650'
  fill_in 'medico[email]', with: 'rodrigo@rodrigo.com'
  fill_in 'medico[especialidade]', with: 'Reumatologista'
  fill_in 'medico[crm]', with: crm
  click_button 'Create Medico'
  expect(page).to have_content(crm)
end

When('eu clico em editar o medico e atualizo especialidade para {string}') do |especialidade|
  click_link 'Edit this medico'
  fill_in 'medico[especialidade]', with: especialidade
  click_button 'Update Medico'
end

Then('eu recebo uma mensagem que avisa que o medico com crm {int} foi atualizado') do |crm|
  expect(page).to have_content('Medico was successfully updated.')
  expect(page).to have_content(crm)
end

Given('eu estou na pagina de menu') do
  visit 'menu'
end

When('eu clico em exibir medicos') do
  click_link 'exibir Médicos'
end

Then('eu vejo todos os medicos e suas informações') do
  expect(page).to have_content("Medicos")
end

