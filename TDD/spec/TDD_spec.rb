require 'TDD'

RSpec.describe "TDD" do
  
  describe "#my_uniq" do
    let(:arr) { [1, 2, 1, 3, 3] }
    
    it "returns an array" do
      expect(arr.my_uniq).to be_an_instance_of(Array)
    end
    
    #ask TA if we can use .uniq method to test our my_uniq
    it "returns an array with no duplicates and in right order" do
      uniq_arr = arr.my_uniq
      expect(uniq_arr == arr.uniq).to be true
    end  
    
    it "returns a new array" do
      expect(arr.my_uniq).not_to be(arr)
    end
  end
  
  describe "#two_sum" do 
    let(:arr) { [-1, 0, 2, -2, 1] }
    let(:result) { [[0, 4], [2, 3]] }
    
    it "returns correct indices sorted dictionary-wise" do
      expect(arr.two_sum).to eq(result)
    end
    
    it "returns an array" do
      expect(arr.two_sum).to be_an_instance_of(Array)
    end
  end
  
  describe "#my_transpose" do
    let(:matrix) { 
      [[0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]]
    }
  
    let(:result) { 
      [[0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]] 
    }
    
    it "returns a transposed matrix" do
      expect(matrix.my_transpose).to eq(result)
    end
    
    it "doesn't use #transpose" do
      expect(matrix).to_not receive(:transpose)
      matrix.my_transpose
    end
  end
  
  describe "#stock_picker" do
    let(:prices) { [3, 5, 10, 1, 100, 23, 54, 100] }
    let(:result) { [3, 7] }
    
    it "returns the indices of the most profitable buy/sell difference" do
      expect(prices.stock_picker).to eq(result)
    end
    
    it "only returns sell days greater than buy days" do
      expect(prices.stock_picker.first < prices.stock_picker.last).to be true
    end
  end
  
end
