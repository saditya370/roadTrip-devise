require 'rails_helper'

RSpec.describe "Trips", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'add the new trip to the list of trips' do
    login_as(create(:user))
    visit('/')
    click_link('New trip')
    expect(page).to have_content('New trip')
    expect(current_path).to eql('/trips/new')
    fill_in('Name',with: 'Uttarkashi')
    click_button('Create Trip')
    expect(page).to have_content('Uttarkashi')


  end

  it 'displays the Trips and links to the new trip page' do
    login_as(create(:user))

    visit('/trips')
    expect(page).to have_content('Trips')
    click_link('New trip')
    expect(current_path).to eql('/trips/new')
    expect(page).to have_content('New trip')
  end

  it 'displays the new trip page and go baks to trip index page' do
    login_as(create(:user))

    visit('/trips/new')
    expect(page).to have_content('New trip')
    click_link('Back to trips')
    expect(current_path).to eql('/trips')
    expect(page).to have_content('Trips')
  end

 

  it "load the show page with the trip name" do 
    login_as(create(:user))
    user = User.find_by(name: "Aditya",email:"jane.doe@hey.com")
    trip= user.trips.create!(name: "Heloo Dubai")
    visit trip_path(trip)
    expect(page).to have_content("Heloo Dubai")
  end

  it "dosn't create the new trips" do 
    login_as(create(:user))

    visit('/trips/new')
    expect(page).to have_content('New trip')
    click_button('Create Trip')
    expect(page).to have_content("error prohibited this trip from being saved:")




  end


  it "load the index page with the trip name" do 
    login_as(create(:user))

    user = User.find_by(name: "Aditya",email:"jane.doe@hey.com")
    trip= user.trips.create!(name: "Heloo Dubai")
    trip= user.trips.create!(name: "Heloo Noida")
    visit trips_path()
    expect(page).to have_content("Heloo Dubai")
    expect(page).to have_content("Heloo Noida")
  end




end
