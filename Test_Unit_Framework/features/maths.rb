require "test/unit" 

class Maths < Test::Unit::TestCase
  @@sum  #class variable
  @@sub  #class variable
  @@mul  #class variable
  @@div  #class variable
  def setup 
	puts "\nIn side setup part"
	@num1 = 50  #Instance variable
	@num2 = 5  #Instance variable
  end 

  def teardown 
    puts "In side teardown part\n\n"
  end 

  def test_add 
    @@sum = @num1 + @num2
	puts "Sum of #{@num1} and #{@num2} is -- #{@@sum}"
  end
  
  def test_sub 
    @@sub = @num1 - @num2
	puts "Subtraction of #{@num2} from #{@num1} is -- #{@@sub}"
  end
  
  def test_mul 
    @@mul = @num1 * @num2
	puts "Multiplication of #{@num1} and #{@num2} is -- #{@@mul}"
  end
  
  def test_div 
    @@div = @num1 / @num2
	puts "Division of #{@num1} and #{@num2} is -- #{@@div}"
  end
end