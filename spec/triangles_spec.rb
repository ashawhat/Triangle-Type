require 'rspec'
require 'triangles.rb'

describe Triangles do
  it 'creates an instance of a class "triangle" with three measurements' do
  test_triangle = Triangles.new("side1", "side2", "side3")
  test_triangle.should be_an_instance_of Triangles
end
  it 'determines if the triangle is Isosceles, Equilateral, or Scalene' do
  test_triangle = Triangles.new(4, 4, 4)
  test_triangle.triangle_type.should eq "Equilateral"
 end
 it 'determines if the triangle is Isosceles, Equilateral, or Scalene' do
  test_triangle = Triangles.new(4, 5, 6)
  test_triangle.triangle_type.should eq "Scalene"
 end
 it 'determines if the triangle is Isoceles, Equilateral, or Scalene' do
  test_triangle = Triangles.new(4, 4, 6)
  test_triangle.triangle_type.should eq "Isosceles"
end
end
