=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end

class ResistorColorTrio
  attr_accessor :colors

  def initialize(colors)
    @colors = {
      "black" => 0,
      "brown" => 1,
      "red" => 2,
      "orange" => 3,
      "yellow" => 4,
      "green" => 5,
      "blue" => 6,
      "violet" => 7,
      "grey" => 8, 
      "white" => 9
    }

    @color1 = colors[0]
    @color2 = colors[1]
    @color3 = colors[2]
    
  end

  def label
    if @colors[@color1].nil? || @colors[@color2].nil? || @colors[@color3].nil?
      raise ArgumentError
    else
      @resistance = (@colors[@color1] * 10 + @colors[@color2]) * 10 ** @colors[@color3]
      if @resistance < 1000
        "Resistor value: #{@resistance} ohms"
      else
        "Resistor value: #{@resistance/1000} kiloohms"
      end 
    end
  end
end