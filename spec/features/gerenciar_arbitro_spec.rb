# coding: utf-8
require 'rails_helper'

feature 'gerenciar Arbitro' do
	scenario 'incluir Arbitro' do # , :js => true do
		visit new_arbitro_path
		preencher_e_verificar_arbitro
	end

	scenario 'alterar Arbitro' do #, :js => true do
		arbitro = FactoryGirl.create(:arbitro)
		visit edit_arbitro_path(arbitro)
		preencher_e_verificar_arbitro
	end

	scenario 'excluir Arbitro' do #, :javascript => true do
		arbitro = FactoryGirl.create(:arbitro)
		visit arbitros_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_arbitro
		fill_in 'Nome', :with => "Lidia"
		fill_in 'Qtd lutas', :with => "5"

		click_button 'Salvar'

		expect(page).to have_content 'Nome: Lidia'
		expect(page).to have_content 'Qtd lutas: 5'

	end
end