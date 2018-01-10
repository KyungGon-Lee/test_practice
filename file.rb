# 20.times do |n|
# 	file.open((n+1).to_s + "list.txt", "w") do |f|
# 	f.write((n+1).to_s + "번쨰 파일입니다"")
# 	end
# end

puts Dir.pwd

20.times do |n|
	file.open("#{ n + 1} + list.txt", "w") do |f|
	f.write("#{ n + 1}번쨰 파일입니다")
	end
end


# .txt 20개를 만든다
# 몇번쨰 파일 + list



# concatenation : 합체 " " + " "
# interpolation : 수술"()"

age = 25
# puts "내 나이는" + age.to_s
puts "내 나이는 #{age}"