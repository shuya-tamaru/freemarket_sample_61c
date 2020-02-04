require 'rails_helper'

describe User do
  describe '#create' do
    #１ページ目の全ての項目が存在すれば登録できる
    it "is valid with a nickname, email, last_name, first_name, last_name_kana, first_name_kana, password, password_confirmation, birthday_year, birthday_month, birthday_date" do
      user = build(:user)
      expect(user).to be_valid
    end
    
    #nicknameが空だと登録できない
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    #emailが空だと登録できない
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    #last_nameが空だと登録できない
    it "is invalid without a last_name" do
      user = build(:user, last_name: "")
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end

    #first_nameが空だと登録できない
    it "is invalid without a first_name" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    #last_name_kanaが空だと登録できない
    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: "")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("can't be blank")
    end

    #first_name_kanaが空だと登録できない
    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end

    #passwordが空だと登録できない
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    #passwordが存在しても、password_confirmationが空だと登録できない
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    #birthday_yearが空だと登録できない
    it "is invalid without a birthday_year" do
      user = build(:user, birthday_year: "")
      user.valid?
      expect(user.errors[:birthday_year]).to include("can't be blank")
    end

    #birthday_monthが空だと登録できない
    it "is invalid without a birthday_month" do
      user = build(:user, birthday_month: "")
      user.valid?
      expect(user.errors[:birthday_month]).to include("can't be blank")
    end

    #birthday_dateが空だと登録できない
    it "is invalid without a birthday_date" do
      user = build(:user, birthday_date: "")
      user.valid?
      expect(user.errors[:birthday_date]).to include("can't be blank")
    end

    #passwordが7文字以上の半角英数混在であれば登録できる
    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "abc1234", password_confirmation: "abc1234")
      expect(user).to be_valid
    end

    #passwordが全角だと登録できない
    it "is invalid with a password that has more than 7 characters that aren't half-width alphanumeric" do
      user = build(:user, password: "ａｂｃｄ１２３", password_confirmation: "ａｂｃｄ１２３")
      user.valid?
      expect(user.errors[:password]).to include("is invalid")
    end

    #passwordが7文字以上でも半角数字のみであれば登録できない
    it "is invalid with a password that has more than 7 characters only half-width number" do
      user = build(:user, password: "1234567", password_confirmation: "1234567")
      user.valid?
      expect(user.errors[:password]).to include("is invalid")
    end

    #passwordが7文字以上でも半角英字のみであれば登録できない
    it "is invalid with a password that has more than 7 characters only half-width alphanumeric" do
      user = build(:user, password: "abcdefg", password_confirmation: "abcdefg")
      user.valid?
      expect(user.errors[:password]).to include("is invalid")
    end

    #passwordが6文字以下の半角英数混合だと登録できないこと
    it "is invalid with a password that has less than 6 characters" do
      user = build(:user, password: "a0b1c2", password_confirmation: "a0b1c2")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    #passwordが7文字以上の半角数字混在でもpasswordとpassword_confirmationが不一致なら登録できない
    it "is invalid that password isn't equal to password_confirmation" do
      user = build(:user, password: "abcd123", password_confirmation: "abcd321")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    #emailが重複していると登録できない
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    #last_name_kanaが全角カタカナ以外だと登録できない
    it "is invalid that last_name_kana isn't Full-width" do
      user = build(:user, last_name_kana: "ｷﾑﾗ")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("全角カタカナのみで入力して下さい")
    end

    #first_name_kanaが全角カタカナ以外だと登録できない
    it "is invalid that first_name_kana isn't Full-width" do
      user = build(:user, first_name_kana: "ｷﾑﾗ")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("全角カタカナのみで入力して下さい")
    end

  end
end