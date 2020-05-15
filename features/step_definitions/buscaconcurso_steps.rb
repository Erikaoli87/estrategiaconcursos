#encoding: utf-8

Dado("que o aluno acesse o portal da Estrategia Concursos") do
  @busca_page.go
end

Quando("realiza a busca de cursos por professor") do
  @busca_page.por_professor
end

Quando("realiza a busca de cursos por concurso") do
  @busca_page.por_concurso
end

Quando("realiza a busca de cursos por matéria") do
  @busca_page.por_materia
end

Quando("realiza a busca de cursos por {string}") do |regiao|
  @busca_page.por_regiao(regiao)
end

Quando("filtra o conteudo pelo {string} acessar o seu conteudo") do |nome|
  @busca_page.filtro(nome)
end

Quando("escolhe uma das {string} disponiveis do curso listado") do |assinatura|
  @busca_page.filtro_assinatura(assinatura)
end

Quando("verifica o {string} do curso") do |valor_exibido|
  expect(@busca_page.valor_exibido).to have_content valor_exibido
end

Então("acessa os detalhes da {string} curso e verifica o {string} e o {string} do curso escolhido") do |assinatura, valor_total, valor_parcelado|
  @busca_page.detalhe_curso(assinatura)
  expect(@busca_page.valor_total).to have_content valor_total
  expect(@busca_page.valor_parcelado).to eql valor_parcelado
end
