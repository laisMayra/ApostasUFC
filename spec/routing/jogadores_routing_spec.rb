require "rails_helper"

RSpec.describe JogadoresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jogadores").to route_to("jogadores#index")
    end

    it "routes to #new" do
      expect(:get => "/jogadores/new").to route_to("jogadores#new")
    end

    it "routes to #show" do
      expect(:get => "/jogadores/1").to route_to("jogadores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jogadores/1/edit").to route_to("jogadores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jogadores").to route_to("jogadores#create")
    end

    it "routes to #update" do
      expect(:put => "/jogadores/1").to route_to("jogadores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jogadores/1").to route_to("jogadores#destroy", :id => "1")
    end

  end
end
