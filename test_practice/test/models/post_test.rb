require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "title & content는 반드시 2글자 이상이어야 한다." do
    post = Post.new(title: "a", content: "a")
    refute post.save
    # assert !post.save
  end
  test "title은 반드시 100글자 이하이어야 한다." do
    post = Post.new(title: Faker::Lorem.words(200))
    refute post.save
  end

  test "content는 반드시 500글자 이하이어야 한다." do
    post = Post.new(content: Faker::Lorem.words(600))
    refute post.save
  end
end

# post model
# 1.title은 반드시 nil이 아니어야 한다.
# 2.title은 반드시 2글자 이상이어야 한다.
# 3.title은 반드시 100글자 이하여야 한다.
# 4.content는 반드시 nil이 아니어야 한다.
# 5.content는 반드시 2글자 이상이어야 한다.
# 6.content는 반드시 500글자 이하여야 한다.
