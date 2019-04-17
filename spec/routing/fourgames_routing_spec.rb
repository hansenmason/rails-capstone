require "rails_helper"

RSpec.describe FourgamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fourgames").to route_to("fourgames#index")
    end


    it "routes to #show" do
      expect(:get => "/fourgames/1").to route_to("fourgames#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fourgames").to route_to("fourgames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fourgames/1").to route_to("fourgames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fourgames/1").to route_to("fourgames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fourgames/1").to route_to("fourgames#destroy", :id => "1")
    end

  end
end
