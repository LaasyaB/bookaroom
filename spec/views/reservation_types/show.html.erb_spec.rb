require 'rails_helper'

RSpec.describe "reservation_types/show", type: :view do
  before(:each) do
    @reservation_type = assign(:reservation_type, ReservationType.create!(
      :title => "Title",
      :description => "MyText",
      :reservation => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
