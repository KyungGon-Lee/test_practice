require 'sinatra'

get '/' do
  erb :index
end

get '/write' do
  # 글을 저장하고
  @title = params["title"]
  @content = params["content"]
  File.open("blog.txt", "a") do |f|
    f.write("title : #{@title} , content :  #{@content}")
    f.write("\m")
  end
  erb :write #글이 성공적으로 작성 되었습니다.
end

get '/show' do
  @list = []
  File.open("blog.txt", "r") do |f|
    f.each_line do |line|
      @list << line
    end
  end
  erb :show
end
