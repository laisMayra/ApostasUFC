require 'rails_helper'

RSpec.describe "Lutadores", :type => :request do
  describe "GET /lutadores" do
    it "works! (now write some real specs)" do
      get lutadores_path
      expect(response).to have_http_status(200)
    end
  end
end
