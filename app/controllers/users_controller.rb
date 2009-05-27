class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    raise ActiveRecord::RecordNotFound.new unless @user && @user.active?
    @diaries = @user.diaries.paginate(:page => params[:page], :per_page => 10)
    @nodes = @user.nodes.public.by_date.all(:limit => 20)
    respond_to do |wants|
      wants.html
      wants.atom { render 'diaries/index' }
    end
  end

end
