require "rails_helper"

RSpec.describe LutasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lutas").to route_to("lutas#index")
    end

    it "routes to #new" do
      expect(:get => "/lutas/new").to route_to("lutas#new")
    end

    it "routes to #show" do
      expect(:get => "/lutas/1").to route_to("lutas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lutas/1/edit").to route_to("lutas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lutas").to route_to("lutas#create")
    end

    it "routes to #update" do
      expect(:put => "/lutas/1").to route_to("lutas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lutas/1").to route_to("lutas#destroy", :id => "1")
    end

  end
end
