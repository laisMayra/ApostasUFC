# coding: utf-8
require 'rails_helper'

feature 'gerenciar Luta' do

	scenario 'incluir luta' do # , :js => true do
		visit new_luta_path
		preencher_e_verificar_luta
	end

	scenario 'alterar luta' do #, :js => true do
		luta = FactoryGirl.create(:luta)
		visit edit_luta_path(luta)
		preencher_e_verificar_luta
	end

	scenario 'excluir luta' do #, :javascript => true do
		luta = FactoryGirl.create(:luta)
		visit lutas_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_luta
		fill_in 'Vencedor', :with => "Lais"
		fill_in 'Tipovitoria', :with => "KO"
		fill_in 'Rounds', :with => "3"

		click_button 'Salvar'
		expect(page).to have_content 'Vencedor: Lais'
		expect(page).to have_content 'Tipovitoria: KO'
		expect(page).to have_content 'Rounds: 3'

	end
end