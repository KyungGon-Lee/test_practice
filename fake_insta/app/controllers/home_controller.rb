class HomeController < ApplicationController
  def index
    # erb :index # 컨트롤러 액션과 이름이 같으면 생략 가능
    # render :index
  end

  def hello
    @name = params[:name]
    # render :hello
  end

  def lotto
    @lotto =(1..45).to_a.sample(6)
    render :lotto #이게 생략되어있음
  end

  def lunch
    @lunch = ["탕수육", "짬뽕", "짜장면", "라조귀", "울면", "깐풍기", "김밥킴"].sample
  end

  def search

  end



end
