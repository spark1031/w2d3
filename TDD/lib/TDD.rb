class Array
  
  def my_uniq
    result = []
    
    self.each do |el|
      result << el unless result.include?(el) 
    end
    result
  end
  
  def two_sum
    result = []
    
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        result << [idx1, idx2] if idx2 > idx1 && el1 + el2 == 0
      end
    end
    
    result      
  end
  
  def my_transpose
    result = Array.new(self[0].length) { Array.new (self.length) }
    
    self.each_with_index do |row, row_idx| 
      row.each_with_index do |el, col_idx|
        result[col_idx][row_idx] = el
      end
    end
    
    result 
  end
  
  def stock_picker
    hash = Hash.new
  
    self.each_with_index do |price1, day1|
      self.each_with_index do |price2, day2|
        if day2 > day1
          hash[price2 - price1] = [day1, day2]
        end
      end
    end
    hash.max_by { |k, v| k }.last
  end
  
end