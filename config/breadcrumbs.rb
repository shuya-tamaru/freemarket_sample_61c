crumb :root do
  link "メルカリ", root_path
end

crumb :myinfomations do
  link "マイページ", myinfomations_path
  parent :root
end

crumb :notifications do
  link "お知らせ", notifications_path
  parent :myinfomations
end

crumb :todos do
  link "やることリスト", todos_path
  parent :myinfomations
end

crumb :likes do
  link "いいね！一覧", likes_path
  parent :myinfomations
end

crumb :products do
  link "出品した商品 - 出品中", products_path
  parent :myinfomations
end

crumb :trading_products do
  link "出品した商品 - 取引中", trading_products_path
  parent :myinfomations
end

crumb :sold_products do
  link "出品した商品 - 売却済み", sold_products_path
  parent :myinfomations
end

crumb :trading_items do
  link "購入した商品 - 取引中", trading_items_path
  parent :myinfomations
end

crumb :bought_items do
  link "購入した商品 - 過去の取引", bought_items_path
  parent :myinfomations
end

crumb :news do
  link "ニュース一覧", news_index_path
  parent :myinfomations
end

crumb :reviews do
  link "評価一覧", reviews_path
  parent :myinfomations
end

crumb :supports do
  link "お問い合わせ", supports_path
  parent :myinfomations
end

crumb :sales do
  link "売上・振込申請", sales_path
  parent :myinfomations
end

crumb :points do
  link "ポイント", points_path
  parent :myinfomations
end

crumb :profiles do
  link "プロフィール", edit_profile_path(current_user)
  parent :myinfomations
end

crumb :user do
  link "ログアウト", user_path(current_user)
  parent :myinfomations
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).