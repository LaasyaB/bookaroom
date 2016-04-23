require 'rails_helper'

RSpec.describe "ReservationTypes", type: :request do
  describe "GET /reservation_types" do
    it "works! (now write some real specs)" do
      get reservation_types_path
      expect(response).to have_http_status(200)
    end
  end
end
