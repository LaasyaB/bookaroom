require 'rails_helper'

RSpec.describe "room_types/index", type: :view do
  before(:each) do
    assign(:room_types, [
      RoomType.create!(
        :room => nil
      ),
      RoomType.create!(
        :room => nil
      )
    ])
  end

  it "renders a list of room_types" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
