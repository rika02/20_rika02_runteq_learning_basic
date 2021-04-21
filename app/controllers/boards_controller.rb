class BoardsController < ApplicationController
  skip_before_action :require_login

  def new; end

  def index
    if logged_in?
      @boards = Board.all
    else
      redirect_to login_path, danger: t('.fail')
    end
  end
end
