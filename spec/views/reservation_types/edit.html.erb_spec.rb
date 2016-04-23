require 'rails_helper'

RSpec.describe "reservation_types/edit", type: :view do
  before(:each) do
    @reservation_type = assign(:reservation_type, ReservationType.create!(
      :title => "MyString",
      :description => "MyText",
      :reservation => nil
    ))
  end

  it "renders the edit reservation_type form" do
    render

    assert_select "form[action=?][method=?]", reservation_type_path(@reservation_type), "post" do

      assert_select "input#reservation_type_title[name=?]", "reservation_type[title]"

      assert_select "textarea#reservation_type_description[name=?]", "reservation_type[description]"

      assert_select "input#reservation_type_reservation_id[name=?]", "reservation_type[reservation_id]"
    end
  end
end
