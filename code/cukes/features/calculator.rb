class Calculator
  def initialize
    @stack = []
  end
  
  def enter( number )
    @stack << number
  end
  
  def press( key )
    operand_1 = @stack.pop
    operand_2 = @stack.pop
    
    @stack << ( operand_2 + operand_1 )
  end
  
  def result
    @stack.last
  end
end
