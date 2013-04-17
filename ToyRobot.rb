class ToyRobot

@@XY = ["0","1","2","3","4","5"]
@@F = ["NORTH","SOUTH","EAST","WEST"]
@x,@y = 0
@face = nil

  def check_boundry
    case @face
      when "NORTH"
        @y == 0 ? (false) : (@y = @y-1)
      when "SOUTH"
        @y == 5 ? (false) : (@y = @y+1)
      when "WEST"
        @x == 0 ? (false) : (@x = @x-1)
      when "EAST"
        @x == 5 ? (false) : (@x = @x+1)
      else
        return false 
    end 
  end

  def place(input)
    args = input.split(",")
    if args.length != 4
      puts "invalid input.It should be <place>,<X>,<Y>,<F>. try again!"
      get_commands
    elsif !@@XY.include?(args[1]) then
      puts "X coordinate is out of space. Try again!"
      get_commands
    elsif !@@XY.include?(args[2]) then
      puts "Y Coordinate is out of space. Try again!"
      get_commands
    elsif !@@F.include?(args[3].upcase) then
      puts 'Invalid rotate command. Try again!'
      get_commands
    end
    @x = args[1].to_i
    @y = args[2].to_i  
    @face = args[3].upcase
  end

  def move
    unless check_boundry then
      puts "No further move unless rotate me....."
    end
      
  end

  def left
    case @face
      when "NORTH"
        @face = "WEST"
      when "WEST"
        @face = "SOUTH"
      when "SOUTH"
        @face = "EAST"
      when "EAST" 
        @face = "NORTH"
    end
  end

  def right
    case @face
      when "NORTH"
        @face = "EAST"
      when "WEST"
        @face = "NORTH"
      when "SOUTH"
        @face = "WEST"
      when "EAST" 
        @face = "SOUTH"
    end
  end

  def report
    puts "X:#{@x}, Y:#{@y}, F:#{@face}"
  end

  def eval_commands(input)
    case input
      when /^place\S*/
        place(input)
      when "move"
        move
      when "left"
        left
      when "right"
        right
      when "report"
        report
      else
        puts "invalid command"
    end
    get_commands
  end

  def get_commands
    input = gets.chomp
    eval_commands(input)
  end



end

puts "Welcome to Toy Robot Simulation program"
puts "======================================="
puts "To place robot: place,X,Y,F"
puts "To move : move"
puts "To rotate: left or right"
puts "----------------------------------------"
tr = ToyRobot.new
puts tr.get_commands
