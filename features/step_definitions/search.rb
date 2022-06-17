Dado('que o usuário esteja na página inicial') do
    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('realizar a busca por um produto') do
    product_for_search = Factory::Static.static_data('valid_product')
    @home_page.search_for(product_for_search)
    @search_results_page = Pages::SearchResults.new
    # @search_results_page.close_ad()
end
  
Então('resultados deverão ser retornados ao usuário') do
    expect(@search_results_page).to have_products
end

Quando('realizar a busca pelo {string}') do |products|
    @home_page.search_for(products)
    @search_results_page = Pages::SearchResults.new
    # @search_results_page.close_ad()
end