require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*item)
    @list = item
  end

  def each
    @list.each do |item|
      yield item
    end
  end

  attr_reader :list
end

list = MyList.new(1, 2, 3, 4)
all_res_true = list.all? { |e| e < 5 }
all_res_false = list.all? { |e| e > 5 }

puts "all nums in array < 5? -> #{all_res_true}"
puts "all nums in array > 5? -> #{all_res_false}"

any_res_true = list.any? { |e| e == 2 }
any_res_false = list.any? { |e| e == 5 }

puts "any num in array = 2? -> #{any_res_true}"
puts "any num in array = 5? -> #{any_res_false}"

filter_res = list.filter(&:even?)

puts "filter even numbers -> #{filter_res}"
