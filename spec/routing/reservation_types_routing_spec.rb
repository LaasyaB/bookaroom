require "rails_helper"

RSpec.describe ReservationTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reservation_types").to route_to("reservation_types#index")
    end

    it "routes to #new" do
      expect(:get => "/reservation_types/new").to route_to("reservation_types#new")
    end

    it "routes to #show" do
      expect(:get => "/reservation_types/1").to route_to("reservation_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reservation_types/1/edit").to route_to("reservation_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reservation_types").to route_to("reservation_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/reservation_types/1").to route_to("reservation_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/reservation_types/1").to route_to("reservation_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reservation_types/1").to route_to("reservation_types#destroy", :id => "1")
    end

  end
end
