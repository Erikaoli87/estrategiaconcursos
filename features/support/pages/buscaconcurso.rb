class BuscaPage
  include Capybara::DSL

  def go
    visit "/"
    find("#onesignal-popover-cancel-button").click
  end

  def por_concurso
    find(:link, "Por concurso").click
  end

  def por_professor
    find(:link, "Por professor").click
  end

  def por_materia
    find(:link, "Por matéria").click
  end

  def por_regiao(regiao)
    find(:link, "Por região").click
    find(".regions-list-item a", text: regiao).click
    page.execute_script("window.scrollTo(0,2000)")
  end

  def filtro(nome)
    page.has_text?(nome)
    find(".search input[type=text]").set nome
    find(".card-prod-title > a").click
  end

  def valor_exibido
    find(".card-prod-price").text
  end

  def detalhe_curso(assinatura)
    find(".js-card-prod-name", text: assinatura).click
  end

  def filtro_assinatura(assinatura)
    find(".search input[type=text]").set assinatura
  end

  def valor_total
    find(".value").text
  end

  def valor_parcelado
    if page.has_css?(".cur-details-shopping-installments")
      find(".cur-details-shopping-installments").text
    else
      page.has_no_css?(".cur-details-shopping-installments")
      find(".cur-details-shopping-features").text
    end
  end
end
