require "rails_helper"

RSpec.describe ArbitrosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arbitros").to route_to("arbitros#index")
    end

    it "routes to #new" do
      expect(:get => "/arbitros/new").to route_to("arbitros#new")
    end

    it "routes to #show" do
      expect(:get => "/arbitros/1").to route_to("arbitros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/arbitros/1/edit").to route_to("arbitros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/arbitros").to route_to("arbitros#create")
    end

    it "routes to #update" do
      expect(:put => "/arbitros/1").to route_to("arbitros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arbitros/1").to route_to("arbitros#destroy", :id => "1")
    end

  end
end
