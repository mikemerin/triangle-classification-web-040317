class Triangle

  attr_accessor :s

  def initialize(s1,s2,s3) @s = [s1,s2,s3].sort end

  def kind

    raise TriangleError if @s.any? { |x| x <= 0 } || @s[0] + @s[1] <= @s[2]
      
    [:equilateral, :isosceles, :scalene][@s.uniq.size-1]

  end

end

class TriangleError < StandardError

  def message() "Not a valid triangle!" end

end


# old answer before equations and grouping above
#
# class Triangle
# 
#   attr_accessor :s1, :s2, :s3
# 
#   def initialize(s1,s2,s3) @s1,@s2,@s3 = s1,s2,s3 end
# 
#   def kind
# 
#     raise TriangleError if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 || @s1 + @s2 <= @s3 || @s1 + @s3 <= @s2 || @s2 + @s3 <= @s1
#       
#     return :equilateral if @s1 == @s2 && @s1 == @s3
#     return :isosceles if @s1 == @s2 || @s1 == @s3 || @s2 == @s3
#     return :scalene      
# 
#   end
# 
# end