
require 'rails_helper'

RSpec.describe 'Search for matching flights', type: :feature do
  # let!(:san_fran) { create(:airport, :san_fran) }
  # let!(:new_york) { create(:airport, :new_york) }

  let!(:flight_nyc) { create(:flight) }
  # binding.pry
  scenario 'valid inputs' do
    # flight = create(:flight)
    # visit root_path

    # sleep(1)
    # select("San Francisco, CA", from: 'departure_airport_id')
    # sleep(1)
    # fill_in 'location', with: "New York City, NY"
    # sleep(1)
    # fill_in 'departure_date', with: "Mon, Aug 1"
    # sleep(1)
    # fill_in 'number_of_passengers', with: 1
    # sleep(1)
    # click_on 'Search flights'
    # sleep(1)
  end
end
