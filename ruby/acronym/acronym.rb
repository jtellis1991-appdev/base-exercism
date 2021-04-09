=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  attr_reader :abbreviate

#   def self.abbreviate(arg1)
#     acronym = []
#     arg1.split(/[\s\W]/).each do |word|
#       if !word.empty?
#         p word
#         acronym << word[0].upcase
#       end
#     end
#     acronym.join
#   end

  def self.abbreviate(arg1)
    acronym = []
    arg1.split(/[\s\W]/).each { |word| acronym << word[0].upcase unless word.empty? }
    acronym.join
  end


end
