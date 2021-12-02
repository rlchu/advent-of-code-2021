module Day02
  class << self
    def multiply_dimensions(input)
      convert_to_dimensions(input)
      input
    end

    def convert_to_dimensions(input)
      input.map do |direction|
        direction.split(' ')
      end
    end
  end
end

input = File.readlines('day02.input').map(&:strip)

puts Day02.multiply_dimensions(input)
