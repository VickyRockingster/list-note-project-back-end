require "rails_helper"

RSpec.describe ErrandsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/errands").to route_to("errands#index")
    end


    it "routes to #show" do
      expect(:get => "/errands/1").to route_to("errands#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/errands").to route_to("errands#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/errands/1").to route_to("errands#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/errands/1").to route_to("errands#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/errands/1").to route_to("errands#destroy", :id => "1")
    end

  end
end
