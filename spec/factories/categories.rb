FactoryBot.define do
  factory :category do
    id {1}
    name {"レディース"}
    #このfactoryはitem_specで使用しているが、ancestryを記述すると更にCategoryのアソシエーションを読みに行ってエラーになるため記述しない
    # ancestryをテストする場合、別の名前のfactoryを作ってください
  end
end
