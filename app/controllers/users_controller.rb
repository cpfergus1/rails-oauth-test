class UsersController < ApplicationController
  def new
    @repos = ServiceFacade.get_repos(current_user.token) if current_user
  end
end
