require 'rails_helper'

feature 'Visit the home page' do
  scenario 'Upload Image' do
    visit '/'
    expect(page).to have_content 'Image'
  end

  scenario 'Upload Successful'

  scenario 'Show the image'

end