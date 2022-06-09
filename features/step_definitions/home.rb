Então('deverá ter produtos na home') do
    @home_page = Pages::Home.new
    expect(@home_page).to have_products_on_home
    #binding.pry
end

Quando('selecionar {string} do menu') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('deverá redirecionar para a página da categoria') do
    pending # Write code here that turns the phrase above into concrete actions
end