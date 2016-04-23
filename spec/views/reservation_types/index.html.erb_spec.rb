require 'rails_helper'

RSpec.describe "reservation_types/index", type: :view do
  before(:each) do
    assign(:reservation_types, [
      ReservationType.create!(
        :title => "Title",
        :description => "MyText",
        :reservation => nil
      ),
      ReservationType.create!(
        :title => "Title",
        :description => "MyText",
        :reservation => nil
      )
    ])
  end

  it "renders a list of reservation_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
