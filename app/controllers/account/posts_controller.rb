class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts.paginate(:page => params[:page], :per_page => 6)
  end
end
