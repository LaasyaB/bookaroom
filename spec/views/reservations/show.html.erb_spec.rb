require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :room => nil,
      :user => nil,
      :reservation_details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
