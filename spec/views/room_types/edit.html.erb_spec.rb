require 'rails_helper'

RSpec.describe "room_types/edit", type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
      :room => nil
    ))
  end

  it "renders the edit room_type form" do
    render

    assert_select "form[action=?][method=?]", room_type_path(@room_type), "post" do

      assert_select "input#room_type_room_id[name=?]", "room_type[room_id]"
    end
  end
end
