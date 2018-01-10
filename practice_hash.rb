student = {
  name: "john",
  age: 19,
  gender: "male",
  # school: ["PFLHS", "YONSEI", "KAIST"]
  school: {
    highschool: ["PFLHS", "German"],
    college: ["yonsei", "CS"],
    graduate: ["KAIST", "CS"] # 해시 안에 해시 안에 배열 넣는게 가능함
  }


  # :name => "john",
  # :age => 19,
  # :gender => "male"
  # 위에것과 같음

}

# puts student[:age]
# puts student[:gender]
# graduate에 있는 CS 를 뽑고 싶을 떈
puts student[:school][:graduate][0]

greeting = {:name => "hello"}
greeting[:name] # => "hello"
# greeting["name"] # 에러
greeting2 = {name: "gello"}
json = {"name": "hello"}
hash_string = {"name" => "hello"}
hash_string[:name]
