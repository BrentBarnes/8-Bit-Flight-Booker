
require 'rails_helper'

RSpec.describe 'Search for matching flights', type: :feature do
  scenario 'valid inputs' do
    flight = create(:flight)
    visit "/bookings/new?flight_id=1&number_of_passengers=1&number_of_passengers=1&commit=Select+Flight"

    fill_in 'booking_passengers_attributes_0_name', with: 'Example Name'
    fill_in 'booking_passengers_attributes_0_email', with: 'example@email.com'
    click_on 'Submit'
    
    expect(page).to have_content('Your flight has successfully been booked.')
  end

  scenario 'valid inputs' do
    flight = create(:flight)
    visit "/bookings/new?flight_id=1&number_of_passengers=1&number_of_passengers=1&commit=Select+Flight"
    click_on 'Submit'
    
    expect(page).to have_content('You must fill out all fields')
  end
end