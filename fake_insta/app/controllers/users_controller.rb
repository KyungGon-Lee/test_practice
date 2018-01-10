class UsersController < ApplicationController
  def list
    # 우리가 가지고 있는 모든 글을 보여준다.
    @Users = User.all.reverse #[]

  end

  def signup
    # 새로운 글을 받을 수 있는 form
  end

  def register
    # new에서 날아온 데이터를 저장한다.
    @email = params[:email]
    @password = params[:password]
    User.create(
      :email => params[:email],
      :password => params[:password]
    )
    redirect_to '/users'
  end
end
