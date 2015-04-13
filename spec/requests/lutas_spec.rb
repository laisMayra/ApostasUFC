require 'rails_helper'

RSpec.describe "Lutas", :type => :request do
  describe "GET /lutas" do
    it "works! (now write some real specs)" do
      get lutas_path
      expect(response).to have_http_status(200)
    end
  end
end
