Então('deverá ter produtos na home') do
    @home_page = Pages::Home.new
    @home_page.load
    expect(@home_page).to have_products_on_home
end

Quando('selecionar categoria do menu') do
    @home_page.click_on_menu(2)
end

Então('deverá redirecionar para a página da categoria') do
    expect(@home_page.current_url).to end_with('mundo-gamer')
end


Quando('selecionar categoria do menu e selecionar um tópico da categoria') do
    @home_page.click_compre_pontos(1, 0)
end
  
Então('deverá redirecionar para a página do tópico') do
    expect(@home_page.current_url).to eq('https://www.esfera.com.vc/esfera-viagens')
end