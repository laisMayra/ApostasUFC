require 'rails_helper'

RSpec.describe "Arbitros", :type => :request do
  describe "GET /arbitros" do
    it "works! (now write some real specs)" do
      get arbitros_path
      expect(response).to have_http_status(200)
    end
  end
end
