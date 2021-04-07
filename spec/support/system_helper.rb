module SystemHelper
  def login_as_general
    general_user = create(:user)
    visit '/login'
<<<<<<< HEAD
    fill_in 'Email', with: general_user.email
    fill_in 'Password', with: '12345678'
=======
    fill_in 'メールアドレス', with: general_user.email
    fill_in 'パスワード', with: '12345678'
>>>>>>> f71a5e6... Add: i18nの設定の追加
    click_button 'ログイン'
  end
end
