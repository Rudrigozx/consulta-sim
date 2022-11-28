json.extract! paciente, :id, :nome, :cpf, :email, :dataNascimento, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
