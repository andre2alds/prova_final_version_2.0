require 'calabash-android/calabash_steps'

Dado(/^que eu estou na Home$/) do
  page(Home).botao_cadastrar
end

Quando(/^eu acesso a tela de cadastro e preencho os dados$/) do              
  page(Home).preenchimento_de_dados
end                                                                          
                                                                             
Então(/^o carro e cadastrado$/) do                                         
  page(Home).botao_cadastrar
  page(Home).botao_retorna_tela_principal
  page(Home).botao_consulta
  page(Home).rolar_pagina
  page(Home).confirma_cadastro
end                                                                          