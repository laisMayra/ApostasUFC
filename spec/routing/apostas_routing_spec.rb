require "rails_helper"

RSpec.describe ApostasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/apostas").to route_to("apostas#index")
    end

    it "routes to #new" do
      expect(:get => "/apostas/new").to route_to("apostas#new")
    end

    it "routes to #show" do
      expect(:get => "/apostas/1").to route_to("apostas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/apostas/1/edit").to route_to("apostas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/apostas").to route_to("apostas#create")
    end

    it "routes to #update" do
      expect(:put => "/apostas/1").to route_to("apostas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/apostas/1").to route_to("apostas#destroy", :id => "1")
    end

  end
end
