require 'rails_helper'

RSpec.describe "TipoApostas", :type => :request do
  describe "GET /tipo_apostas" do
    it "works! (now write some real specs)" do
      get tipo_apostas_path
      expect(response).to have_http_status(200)
    end
  end
end
