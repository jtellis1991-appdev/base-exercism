=begin
Write your code for the 'Accumulate' exercise in this file. Make the tests in
`accumulate_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/accumulate` directory.
=end

class Array

  def accumulate(&block)
    accumulator = []
    self.each do |item|
      if item.class == Integer || item.class == Float
        accumulator << item**2
      end
      if item.class == String
        accumulator << block.call(item)
      end
    end
    return accumulator  
  end


end