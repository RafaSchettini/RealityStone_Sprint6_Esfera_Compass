Então('deverá ter produtos na home') do
    @home_page = Pages::Home.new
    @home_page.load
    expect(@home_page).to have_products_on_home
    #binding.pry
end

Quando('selecionar categoria do menu') do
    @home_page.click_on_menu(5)
    binding.pry
end
  
Então('deverá redirecionar para a página da categoria') do
    pending # Write code here that turns the phrase above into concrete actions
end