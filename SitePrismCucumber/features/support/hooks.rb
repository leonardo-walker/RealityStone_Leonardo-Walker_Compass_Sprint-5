Before do 
puts "Estou executando antes de cada cenário"
end

After do |scenario|
puts "Estou executando após de cada cenário"
puts scenario.failed?
end

After do ('@limpar_banco')
puts 'Execuntando depois do cenário: Carregar página do Google CENÁRIO 2'
end
