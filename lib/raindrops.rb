require "raindrops/version"

module Raindrops
  class Drop
    def initialize(int)
      @int = int
      @get_factor = ["Pling", "Plang", "Plong"]
    end

    def factor
      factor1 = ""
      factor1 = @get_factor [0] if (@int%3).zero?
      factor1 += @get_factor [1] if (@int%5).zero?
      factor1 += @get_factor [2] if (@int%7).zero?

      factor1.empty? ? @int.to_s : factor1
    end
  end
end