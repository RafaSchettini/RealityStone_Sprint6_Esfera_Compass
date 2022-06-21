Então('deverá ter produtos na home') do
    @home_page = Pages::Home.new
    @home_page.load
    expect(@home_page).to have_products_on_home
end

Quando('selecionar categoria do menu') do
    @home_page.click_on_menu(3)
end

Então('deverá redirecionar para a página da categoria') do
    expect(@home_page.current_url).to end_with('/vale-compra/esf02152')
end

Quando('selecionar categoria do menu e selecionar um tópico da categoria') do
    @home_page.click_on_submenu(1, 0)
end
  
Então('deverá redirecionar para a página do tópico') do
    expect(@home_page.current_url).to end_with('esfera-hoteis')
end

Quando('selecionar aplicativo da {string}') do |plataforma|
    @url_before = @home_page.current_url
    
    if(plataforma == "AppStore")
        @home_page.apps[0].click
        @new_url = @home_page.apps[0]['href']
    else
        @home_page.apps[1].click
        @new_url = @home_page.apps[1]['href']
    end

end

Então('deverá redirecionar para página de instalação') do
    expect(@new_url).not_to eql @url_before
end