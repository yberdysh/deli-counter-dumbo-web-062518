# Write your code here.

def line(deli_array)
	string = "The line is currently empty."
	if deli_array.length > 0
		string = "The line is currently: "
		deli_array.each_with_index do |person, i|
			string += "#{i + 1}. #{person} "
		end
	end
	puts string.strip
end

def take_a_number(deli, name)
	deli.push(name)
	puts "Welcome, #{name}. You are number #{deli.length} in line."
	deli
end

def now_serving(deli)
	if deli.length == 0
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{deli[0]}."
		deli.shift
	end
end