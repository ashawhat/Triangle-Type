require './lib/triangles.rb'

@list = []

def main_menu
  puts "Enter the three sides of your triangle to determine what kind of triangle it is"
  puts "Press 't' to create a Triangle"
  puts "Press 'l' to list your Triangles"
  puts "Press 'x' to Exit."

  main_choice = gets.chomp
    if main_choice == 't'
      add_triangle
    elsif main_choice == 'l'
      list_triangles
    elsif main_choice == 'x'
      puts "Good-Bye."
    else
      puts "Sorry, Not a Valid Option!"
      main_menu
    end
  end

  def add_triangle
    puts "Enter Side 1 of the Triangle"
    side1 = gets.chomp.to_i
    puts "Enter Side 2 of the Triangle"
    side2 = gets.chomp.to_i
    puts "Enter Side 3 of the Triangle"
    side3 = gets.chomp.to_i
    new_triangle = Triangles.new(side1, side2, side3)
    @list << new_triangle
    puts "Triangle Measurements Recorded.\n\n"
    main_menu
  end

 def list_triangles
    puts "Here are the types of Triangles"
    @list.each do |triangle|
      puts triangle.triangle_type
    end
    puts"\n"
    main_menu
end


main_menu
