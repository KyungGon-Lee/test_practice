Dir.chdir('src')

puts Dir.pwd

list = Dir.entries(Dir.pwd).reject{|name| name[0] == "."}
#.reject .과 ..을 지움 (첫번쨰 글자가 .인걸 제외함)


# puts list
#이제 20이 나와야 할 거임 .과 ..이 빠져서

list.each do |f|
	File.rename(f, "2017" + f)
end


# 20.times do |n|
# 	File.rename("#{n+1}list.txt", "sap#{n+1}list.txt")
# end



# puts list.class

# puts list.length


# list.each do |file|
# 	puts faker
# end

# 