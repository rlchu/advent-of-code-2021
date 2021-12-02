module Day01
  def self.count_depth_measurement_increases(input)
    last = input.first
    increase_count = 0
    input[1..].each do |num|
      num > last && increase_count += 1
      last = num
    end
    increase_count
  end

  def self.count_measurement_sum_group_increases(input)
    input_sums = input.each_cons(3).map{ |batch| batch.sum }
    count_depth_measurement_increases(input_sums)
  end
end

input = File.readlines('input').map{ |num| num.strip.to_i }

puts Day01.count_depth_measurement_increases(input)
puts Day01.count_measurement_sum_group_increases(input)
