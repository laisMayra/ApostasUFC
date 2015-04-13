require "rails_helper"

RSpec.describe TipoApostasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_apostas").to route_to("tipo_apostas#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_apostas/new").to route_to("tipo_apostas#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_apostas/1").to route_to("tipo_apostas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_apostas/1/edit").to route_to("tipo_apostas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_apostas").to route_to("tipo_apostas#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_apostas/1").to route_to("tipo_apostas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_apostas/1").to route_to("tipo_apostas#destroy", :id => "1")
    end

  end
end
