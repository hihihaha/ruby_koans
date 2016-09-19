# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sorted_args = [a, b, c].sort
  # raise TriangleError if [a, b, c].any? { |n| n <= 0 }
  raise TriangleError if sorted_args[0] <= 0
  raise TriangleError if sorted_args[0] + sorted_args[1] <= sorted_args[2]
  
  [:equilateral, :isosceles, :scalene][[a, b, c].uniq.size - 1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
