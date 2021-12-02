module Day02
  class << self
    def multiply_dimensions(input)
      dimensions = convert_to_dimensions(input)
      horizontal, depth = dimensions[0], dimensions[1]
      horizontal = horizontal.map{ |x| x.last.to_i }.sum
      depth = depth.map { |x| x.first == 'down' ? x.last.to_i : -x.last.to_i }.sum
      horizontal * depth
    end

    def convert_to_dimensions(input)
      input.map { |direction| direction.split(' ') }
           .group_by { |dimension| dimension.first == 'forward' }
           .values
    end
  end
end

input = File.readlines('day02.input').map(&:strip)

puts Day02.multiply_dimensions(input)
