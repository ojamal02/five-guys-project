require "rails_helper"

feature "user want to change their profile photo" do
  let(:user) { FactoryGirl.create(:user) }

  let(:uploader) { AvatarUploader.new(user, :avatar) }

  scenario "user succesfully changes their profile photo" do
    login_as(user, :scope => :user)
    visit user_path(user)
    click_link "Add a photo"

    attach_file('Photo', File.absolute_path('spec/features/user_features/test_photo/baconator.jpg'))
    click_button "Update User Photo"
    save_and_open_page
    expect(page).to have_content("Avatar successfully saved!")
  end

  scenario "user unsuccessfully changes their profile photo" do
    login_as(user, :scope => :user)
    visit user_path(user)
    click_link "Add a photo"
    click_button "Update User Photo"
    expect(page).to have_content("No photo was selected!")
  end

end
