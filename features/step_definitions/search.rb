Dado('que o usuário esteja na página inicial') do
    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('realizar a busca por um produto') do
    @home_page.search_for("Telefones")
end
  
Então('resultados deverão ser retornados ao usuário') do
    pending # Write code here that turns the phrase above into concrete actions
end