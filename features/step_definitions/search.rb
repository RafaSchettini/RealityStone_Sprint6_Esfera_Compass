Dado('que o usuário esteja na página inicial') do
    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('realizar a busca por um produto') do
    @home_page.search_for("Telefones")
    @search_results_page = Pages::SearchResults.new
end
  
Então('resultados deverão ser retornados ao usuário') do
    expect(@search_results_page).to have_products
end