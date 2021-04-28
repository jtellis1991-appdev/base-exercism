=begin
Write your code for the 'Accumulate' exercise in this file. Make the tests in
`accumulate_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/accumulate` directory.
=end

class Array

  def accumulate(&block)
  #   accumulator = []
  #   self.each do |item|
  #     if item.class == Integer || item.class == Float
  #       p item
  #       accumulator << (item * item)
  #     end
  #     if item.class == String
  #       accumulator << block.call(item)
  #     end
  #   end
  #   return accumulator  
  # end
  
  return enum_for(:each) unless block_given?
    a = Array.new
    self.each_with_index do |item, index|
      a[index] = yield item
    end
    a
  end
end
