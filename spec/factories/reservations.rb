FactoryGirl.define do
  factory :reservation do
    room nil
    user nil
    reserve_from "2016-04-23 04:15:12"
    reserve_upto "2016-04-23 04:15:12"
    reservation_details "MyText"
  end
end
