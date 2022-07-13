Dado('que esteja na home') do
    @home_page = Home.new
    @home_page.load
end
  
Então('deverá apresentar a logo da Google') do
    expect(@home_page).to have_logo
end
    