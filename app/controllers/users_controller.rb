class UsersController < ApplicationController
  before_action(:force_user_sign_in, only: [:show])

  def index
    users = User.all
    @list_of_users = users.order({ :username => :asc})
    
    render({:template => "users/index.html.erb" })

  end
end

def show
  username = params.fetch("username")
  @the_user = User.where({ :username => username}).first
  @pending_followers = FollowRequest.where({ :recipiento_id => current_user.id }).order({ :created_at => :desc})
  render({ :template => "users/show.html.erb"})
end