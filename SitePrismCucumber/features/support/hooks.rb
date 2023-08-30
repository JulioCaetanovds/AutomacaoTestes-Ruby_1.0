Before do
    puts 'Estou executando antes de cada cenário'
end

After do |scenario|
    puts 'Estou executando depois de cada cenário'
    puts scenario.failed?
end

After('@limpar_banco') do
    puts 'Executando depois do cenário carregar página do google cenário 2'
end