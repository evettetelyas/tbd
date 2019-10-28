FactoryBot.define do
  factory :room do
    name { 'Room Name Based on Event' }
    tm_id  { '123' }
    admin { false }
  end
end
