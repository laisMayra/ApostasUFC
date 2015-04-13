# coding: utf-8
require 'rails_helper'

feature 'gerenciar Jogador' do
	scenario 'incluir jogador' do # , :js => true do
		visit new_jogador_path
		preencher_e_verificar_jogador
	end

	scenario 'alterar jogador' do #, :js => true do
		jogador = FactoryGirl.create(:jogador)
		visit edit_jogador_path(jogador)
		preencher_e_verificar_jogador
	end

	scenario 'excluir jogador' do #, :javascript => true do
		jogador = FactoryGirl.create(:jogador)
		visit jogadores_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_jogador
		fill_in 'Nome', :with => "Lais"
		fill_in 'Cpf', :with => "123"
		fill_in 'Rg', :with => "321"
		fill_in 'Telefone', :with => "99999999"
		fill_in 'Endereço', :with => "Rua xx"
		fill_in 'Usuario', :with => "lais"
		fill_in 'Senha', :with => "000"
		fill_in 'Numeroconta', :with => "5511"
		fill_in 'Agencia', :with => "1155"
		fill_in 'Banco', :with => "BB"

		click_button 'Salvar'

		expect(page).to have_content 'Nome: Lais'
		expect(page).to have_content 'Cpf: 123'
		expect(page).to have_content 'Rg: 321'
		expect(page).to have_content 'Telefone: 99999999'
		expect(page).to have_content 'Endereço: Rua xx'
		expect(page).to have_content 'Usuario: lais'
		expect(page).to have_content 'Senha: 000'
		expect(page).to have_content 'Numeroconta: 5511'
		expect(page).to have_content 'Agencia: 1155'
		expect(page).to have_content 'Banco: BB'

	end
end