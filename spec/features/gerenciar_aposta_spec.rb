# coding: utf-8
require 'rails_helper'

feature 'gerenciar Aposta' do

  scenario 'incluir Aposta' do # , :js => true do
    visit new_aposta_path
    preencher_e_verificar_aposta
  end

  scenario 'alterar Aposta' do #, :js => true do
    aposta = FactoryGirl.create(:aposta)
    visit edit_aposta_path(aposta)
    preencher_e_verificar_aposta
  end

  scenario 'excluir aposta' do #, :javascript => true do
    aposta = FactoryGirl.create(:aposta)
    visit apostas_path
    click_button 'Excluir'
  end

  def preencher_e_verificar_aposta
    fill_in 'Resultado', :with => "Vencedor"
    fill_in 'Valor', :with => "400.5"

    click_button 'Salvar'

    expect(page).to have_content 'Resultado: Vencedor'
    expect(page).to have_content 'Valor: 400.5'

  end

end