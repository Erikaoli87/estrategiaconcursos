      #language:pt

    Funcionalidade: Busca de Cursos Online para Concursos
      Para que o aluno possa estudar para concursos
      Ele realiza acesso ao portal Estratégia Concursos
      Para realizar a busca de cursos para a aréa que deseja atuar

      @professor
      Esquema do Cenario: Filtragem por Professor

      Validar funcionalidades de filtragem por pesquisa de professor

      Dado que o aluno acesse o portal da Estrategia Concursos
      Quando realiza a busca de cursos por professor
      E filtra o conteudo pelo <nome> acessar o seu conteudo
      E escolhe uma das <assinatura> disponiveis do curso listado
      E verifica o <valor_exibido> do curso
      Então acessa os detalhes da <assinatura> curso e verifica o <valor_total> e o <valor_parcelado> do curso escolhido

      Exemplos:
      | nome         | assinatura                                                        | valor_exibido | valor_parcelado       | valor_total   |
      | "Ena Loiola" | "Assinatura Ilimitada 1 Ano - Boleto à vista com 10% de desconto" | "R$ 2.159,67" | ""                    | "R$ 2.159,67" |
      | "Ena Loiola" | "Assinatura Ilimitada 1 Ano - Cartão até 12 x"                    | "R$ 199,97"   | "ou 12x de R$ 199,97" | "R$ 2.399,64" |


      @concurso
      Esquema do Cenario: Filtragem de Concurso por assinatura

      Validar funcionalidades de filtragem por pesquisa de concurso

      Dado que o aluno acesse o portal da Estrategia Concursos
      Quando realiza a busca de cursos por concurso
      E filtra o conteudo pelo <nome> acessar o seu conteudo
      E escolhe uma das <assinatura> disponiveis do curso listado
      E verifica o <valor_exibido> do curso
      Então acessa os detalhes da <assinatura> curso e verifica o <valor_total> e o <valor_parcelado> do curso escolhido

      Exemplos:
      | nome                                     | assinatura                                                            | valor_exibido | valor_parcelado       | valor_total   |
      | "Delegado de Polícia - Cursos Regulares" | "Pacote Teórico Completo p/ Delegado de Polícia 2020 (Curso Regular)" | "R$ 216,67"   | "ou 12x de R$ 216,67" | "R$ 2.600,00" |

      @materia
      Esquema do Cenario: Filtragem por Matéria

      Validar funcionalidades de filtragem por pesquisa de matéria

      Dado que o aluno acesse o portal da Estrategia Concursos
      Quando realiza a busca de cursos por matéria
      E filtra o conteudo pelo <nome> acessar o seu conteudo
      E escolhe uma das <assinatura> disponiveis do curso listado
      E verifica o <valor_exibido> do curso
      Então acessa os detalhes da <assinatura> curso e verifica o <valor_total> e o <valor_parcelado> do curso escolhido

      Exemplos:
      | nome                                | assinatura                                                       | valor_exibido | valor_parcelado       | valor_total   |
      | "Administração de Recursos Humanos" | "Assinatura da Área de Controle/Gestão 2 anos - Cartão até 12 x" | "R$ 262,50"   | "ou 12x de R$ 262,50" | "R$ 3.150,00" |

      @regiao
      Esquema do Cenario: Filtragem por Região

      Validar funcionalidades de filtragem por pesquisa de região

      Dado que o aluno acesse o portal da Estrategia Concursos
      Quando realiza a busca de cursos por <regiao>
      E filtra o conteudo pelo <nome> acessar o seu conteudo
      E escolhe uma das <assinatura> disponiveis do curso listado
      E verifica o <valor_exibido> do curso
      Então acessa os detalhes da <assinatura> curso e verifica o <valor_total> e o <valor_parcelado> do curso escolhido

      Exemplos:
      | nome            | regiao      | assinatura                                      | valor_exibido | valor_parcelado       | valor_total   |
      | "Área de Saúde" | "São Paulo" | "Assinatura Ilimitada 2 Anos - Cartão até 12 x" | "R$ 333,97"   | "ou 12x de R$ 333,97" | "R$ 4.007,64" |

#Funcionalidade: Cenários paralelos sem automação
       Esquema do Cenario: Filtragem concursos - Fitro Principal
       Esquema do Cenario: Filtragem Validar todos os concursos - Mais Vendidos
       Esquema do Cenario: Filtragem Validar todos os concursos - Edital Publicado
       Esquema do Cenario: Filtragem Validar todos os concursos - Edital em Breve
       Esquema do Cenario: Validar todos os concursos - Preparação de Longo Prazo
       Esquema do Cenario: Validar Concurso - Pacotes
       Esquema do Cenario: Validar Concurso - Cursos
