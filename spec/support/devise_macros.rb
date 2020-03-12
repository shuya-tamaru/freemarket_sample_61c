module DeviseMacros
  def login(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end
end
#参考）https://kossy-web-engineer.hatenablog.com/entry/2018/11/30/083719