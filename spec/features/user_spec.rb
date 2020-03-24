require 'rails_helper'

feature 'user_signin', type: :feature do

  let(:user) { FactoryBot.create(:user) }
  
  scenario "user successfully login" do
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button "ログイン"
    expect(current_path).to eq root_path
    expect(page).to have_content('マイページ')
  end

  scenario "user doesn't login with invalid information" do
    visit new_user_session_path
    fill_in 'user_email', with: ""
    fill_in 'user_password', with: user.password
    click_button "ログイン"
    expect(current_path).to eq new_user_session_path
    expect(page).to have_content('ログイン')
  end

end

feature 'user_signout', type: :feature do

  let(:user) { FactoryBot.create(:user) }
  
  scenario "user successfully signout" do
    #ログインする
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button "ログイン"
    expect(current_path).to eq root_path
    expect(page).to have_content('マイページ')

    # ログアウトのテスト
    visit myinfomations_path
    visit user_path(user.id)
    click_on(class: 'logout__button')
    expect(current_path).to eq root_path
    expect(page).to have_content('ログイン')
  end

end
