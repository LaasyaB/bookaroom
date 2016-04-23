require 'rails_helper'

RSpec.describe "room_types/new", type: :view do
  before(:each) do
    assign(:room_type, RoomType.new(
      :room => nil
    ))
  end

  it "renders new room_type form" do
    render

    assert_select "form[action=?][method=?]", room_types_path, "post" do

      assert_select "input#room_type_room_id[name=?]", "room_type[room_id]"
    end
  end
end
