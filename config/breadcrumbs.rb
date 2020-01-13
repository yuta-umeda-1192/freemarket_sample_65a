crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "マイページ",mypage_users_path
end

crumb :profile do
  link "プロフィール",mypage_profile_users_path
  parent :mypage
end

crumb :logout do
  link "ログアウト",mypage_logout_users_path
  parent :mypage
end

crumb :idenfication do
  link "本人情報",mypage_idenfication_users_path
  parent :mypage
end

crumb :credit do
  link "支払い方法",mypage_credit_page_users_path
  parent :mypage
end

# crumb :users do
#   link "マイページ", user_path(current_user.id)
# end

# crumb :user do 
#   link user.nickname, user_path
#   parent :root
# end

# crumb :logout do 
#   link "ログアウト", pending_logout_path
#   parent :users
# end






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