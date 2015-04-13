# coding: utf-8
require 'rails_helper'

feature 'gerenciar tipo_aposta' do
	scenario 'incluir tipo_aposta' do # , :js => true do
		visit new_tipo_aposta_path
		preencher_e_verificar_tipo_aposta
	end

	scenario 'alterar tipo_aposta' do #, :js => true do
		tipo_aposta = FactoryGirl.create(:tipo_aposta)
		visit edit_tipo_aposta_path(tipo_aposta)
		preencher_e_verificar_tipo_aposta
	end

	scenario 'excluir tipo_aposta' do #, :javascript => true do
		tipo_aposta = FactoryGirl.create(:tipo_aposta)
		visit tipo_apostas_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_tipo_aposta
		fill_in 'Descrição', :with => "Resultado"

		click_button 'Salvar'

		expect(page).to have_content 'Descrição: Resultado'
		
	end
end