require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :room => nil,
        :user => nil,
        :reservation_details => "MyText"
      ),
      Reservation.create!(
        :room => nil,
        :user => nil,
        :reservation_details => "MyText"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
