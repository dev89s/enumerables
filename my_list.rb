require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*item)
    @list = item
  end

  attr_reader :list
end

list = MyList.new(1, 2, 3, 4)
all_res_true = list.all? { |e| e < 5 }
all_res_false = list.all? { |e| e > 5 }

puts "all_res_true = #{all_res_true}"
puts "all_res_false = #{all_res_false}"

any_res_true = list.any? { |e| e == 2 }
any_res_false = list.any? { |e| e == 5 }

puts "all_res_true = #{any_res_true}"
puts "all_res_false = #{any_res_false}"

filter_res = list.filter {|e| e.even?}

puts "filter_res = #{filter_res}"
