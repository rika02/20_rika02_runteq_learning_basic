require 'rails_helper'

RSpec.describe 'ログイン・ログアウト', type: :system do
  let(:user) { create(:user) }

  describe '通常画面' do
    describe 'ログイン' do
      context '認証情報が正しい場合' do
        it 'ログインできること' do
          visit '/login'
<<<<<<< HEAD
          fill_in 'Email', with: user.email
          fill_in 'Password', with: '12345678'
=======
          fill_in 'メールアドレス', with: user.email
          fill_in 'パスワード', with: '12345678'
>>>>>>> f71a5e6... Add: i18nの設定の追加
          click_button 'ログイン'
          expect(current_path).to eq root_path
        end
      end

      context 'PWに誤りがある場合' do
        it 'ログインできないこと' do
          visit '/login'
<<<<<<< HEAD
          fill_in 'Email', with: user.email
          fill_in 'Password', with: '1234'
=======
          fill_in 'メールアドレス', with: user.email
          fill_in 'パスワード', with: '1234'
>>>>>>> f71a5e6... Add: i18nの設定の追加
          click_button 'ログイン'
          expect(current_path).to eq('/login'), 'ログイン失敗時にログイン画面に戻ってきていません'
        end
      end
    end

    describe 'ログアウト' do
      before do
        login_as_general
      end
      it 'ログアウトできること' do
        find('#header-profile').click
        click_on('ログアウト')
        expect(current_path).to eq root_path
      end
    end
  end
end
