# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
  # ログイン後のリダイレクト先を変更
  def after_sign_in_path_for(resource)
    mypage_path  # 例: マイページに飛ばす
  end

  # ログアウト後のリダイレクト先を変更
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
