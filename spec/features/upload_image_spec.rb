require 'rails_helper'

feature 'Visit the home page' do
  scenario 'Upload Image' do
    visit '/'
    expect(page).to have_content 'Image Uploader'
  end

  scenario 'Upload Successful' do
    visit new_food_item_path
    fill_in 'Name', :with => 'Chicken'
    click_button 'Create Food item'
    expect(page).to have_content 'Food item was successfully created'
    expect(page).to have_content 'Chicken'

    expect(page).to have_content 'Picture'
  end

  scenario 'Show the image' do
  end

end