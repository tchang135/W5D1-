class MaxIntSet
  attr_reader :max
  def initialize(max)
    @store = Array.new(max) { Array.new }
    @max = max
  end

  def insert(num)
     if !self.is_valid?(num) 
        raise 'Out of range'
     else 
        @store[num] << true 
     end
  end

  def remove(num)
     @store.delete(num)
  end

  def include?(num)
    @store.each do |arr|
      arr.each do |ele|
        return true if ele == num 
      end
    end
    false 
  end

  private

  def is_valid?(num)
     if num <= max && num >= 0
        return true 
     else 
        false 
     end
  end

  def validate!(num)
    num = true 
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
