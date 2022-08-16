
require 'rails_helper'

RSpec.describe 'Search for matching flights', type: :feature do
  scenario 'valid inputs' do
    flight = create(:flight)
    visit root_path

    select("San Francisco, CA", from: 'departure_airport_id')
    select("New York City, NY", from: 'arrival_airport_id')
    select("Mon, Aug 01", from: 'departure_date')
    select('1', from: 'number_of_passengers')
    click_on 'Search flights'

    expect(page).to have_content('From: San Francisco, CA | To: New York City, NY | Date: Monday, August 01')
  end

  scenario 'invalid inputs' do
    flight = create(:flight)
    visit root_path

    select("Departing Airport", from: 'departure_airport_id')
    select("Arriving Airport", from: 'arrival_airport_id')
    select("Departure Date", from: 'departure_date')
    select("Passengers", from: 'number_of_passengers')
    click_on 'Search flights'
    
    expect(page).to have_content('No flights found. Please make sure you have selected an option for each field.')
  end
end
