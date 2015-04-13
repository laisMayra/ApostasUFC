# coding: utf-8
require 'rails_helper'

feature 'gerenciar Lutador' do
	scenario 'incluir lutador' do # , :js => true do
		visit new_lutador_path
		preencher_e_verificar_lutador
	end

	scenario 'alterar lutador' do #, :js => true do
		lutador = FactoryGirl.create(:lutador)
		visit edit_lutador_path(lutador)
		preencher_e_verificar_lutador
	end

	scenario 'excluir lutador' do #, :javascript => true do
		lutador = FactoryGirl.create(:lutador)
		visit lutadores_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_lutador
		fill_in 'Nome', :with => "Lais"
		fill_in 'Altura', :with => "1.65"
		fill_in 'Peso', :with => "51"
		fill_in 'Categoria', :with => "Peso pena"
		fill_in 'Especialidade', :with => "Jiu jitsu"
		fill_in 'Ranking', :with => "55"

		click_button 'Salvar'

		expect(page).to have_content 'Nome: Lais'
		expect(page).to have_content 'Altura: 1.65'
		expect(page).to have_content 'Peso: 51'
		expect(page).to have_content 'Categoria: Peso pena'
		expect(page).to have_content 'Especialidade: Jiu jitsu'
		expect(page).to have_content 'Ranking: 55'

	end
end