Dado ('que acesse a home') do
    visit('https://www.google.com.br')
end
    
Então ('deverá exibir o logo da Google') do
    expect(page).to have_content 'Google'
end

Quando('buscar por {string}') do |elemento|
    find ('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input').set elemento
    find ('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]').click
end
Então('deverão ser encontrados resultados') do
    expect(page).to have_content 'Jeep Compass'
end
