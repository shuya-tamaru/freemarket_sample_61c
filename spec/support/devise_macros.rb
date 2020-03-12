module DeviseMacros
  def login_user(user)
    # @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end

  def logout_user(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_out user
  end
end

#参考：https://qiita.com/kentosasa/items/a0500f2f21b33b29beb6