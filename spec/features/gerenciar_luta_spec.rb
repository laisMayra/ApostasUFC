# coding: utf-8
require 'rails_helper'

feature 'gerenciar Luta' do

	/
	before :each do
		create(:lutador1, nome: 'Lais', altura: '1.65', peso: '51', categoria: 'Peso pena', especialidade: 'Jiu jitsu', ranking: '55')
		create(:lutador2, nome: 'Dudu', altura: '1.75', peso: '80', categoria: 'Peso pesado', especialidade: 'Karate', ranking: '44')
		create(:arbitro, nome: 'Lidia', qtd_lutas: '5')
	end

	let(:lutador1) {create(:lutador1, nome: 'Lais', altura: '1.65', peso: '51', categoria: 'Peso pena', especialidade: 'Jiu jitsu', ranking: '55')}
	let(:lutador2) {create(:lutador2, nome: 'Dudu', altura: '1.75', peso: '80', categoria: 'Peso pesado', especialidade: 'Karate', ranking: '44')}
	let(:arbitro) {create(:arbitro, nome: 'Lidia', qtd_lutas: '5')}
	/
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
		/select 'Lais', from: 'Lutador'
		select 'Dudu', from: 'Lutador'
		select 'Lidia', from: 'Arbitro'/
		fill_in 'Vencedor', :with => "Lais"
		fill_in 'Tipovitoria', :with => "KO"
		fill_in 'Rounds', :with => "3"

		click_button 'Salvar'

		/expect(page).to have_content 'Lutador: Lais'
		expect(page).to have_content 'Lutador: Dudu'
		expect(page).to have_content 'Arbitro: Lidia'/
		expect(page).to have_content 'Vencedor: Lais'
		expect(page).to have_content 'Tipovitoria: KO'
		expect(page).to have_content 'Rounds: 3'

	end
end