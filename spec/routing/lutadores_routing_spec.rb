require "rails_helper"

RSpec.describe LutadoresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lutadores").to route_to("lutadores#index")
    end

    it "routes to #new" do
      expect(:get => "/lutadores/new").to route_to("lutadores#new")
    end

    it "routes to #show" do
      expect(:get => "/lutadores/1").to route_to("lutadores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lutadores/1/edit").to route_to("lutadores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lutadores").to route_to("lutadores#create")
    end

    it "routes to #update" do
      expect(:put => "/lutadores/1").to route_to("lutadores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lutadores/1").to route_to("lutadores#destroy", :id => "1")
    end

  end
end
