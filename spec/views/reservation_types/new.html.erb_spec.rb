require 'rails_helper'

RSpec.describe "reservation_types/new", type: :view do
  before(:each) do
    assign(:reservation_type, ReservationType.new(
      :title => "MyString",
      :description => "MyText",
      :reservation => nil
    ))
  end

  it "renders new reservation_type form" do
    render

    assert_select "form[action=?][method=?]", reservation_types_path, "post" do

      assert_select "input#reservation_type_title[name=?]", "reservation_type[title]"

      assert_select "textarea#reservation_type_description[name=?]", "reservation_type[description]"

      assert_select "input#reservation_type_reservation_id[name=?]", "reservation_type[reservation_id]"
    end
  end
end
