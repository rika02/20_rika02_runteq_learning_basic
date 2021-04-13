class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{user.last_name} #{user.first_name}"
  end
end
