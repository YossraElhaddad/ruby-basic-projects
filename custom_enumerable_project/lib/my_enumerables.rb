module Enumerable

  def my_each
    if block_given?
      for element in self
        yield element
      end
      return self
    end
  end

  def my_each_with_index
    if block_given?

      i = 0
      while i < self.length
        yield(self[i], i)
        i = i + 1
      end
      return self
    end
  end

  def my_all?
    if block_given?

      for element in self
        return false if not yield(element)
     end
      return true
    end
  end

  def my_none?
    if block_given?

      for element in self
        return false if yield(element)
     end
      return true
    end
  end

  def my_any?
    if block_given?

      for element in self
        return true if yield(element)
     end
      return false
    end
  end

  def my_count
    count = 0
    if block_given?
      for element in self
        count = count + 1 if yield(element)
      end
    else
      count = self.length
    end
    count
  end

  def my_select
    result = []
    if block_given?

      for element in self
        result << element if yield(element)
      end
    end
    result
  end

  def my_map(&my_block)
    result = []
    if block_given?

      for element in self
        result << my_block.call(element)
      end
    end
    result
  end

  def my_inject(initial_value, &my_block)
    result = initial_value
    if block_given?

      for element in self
        result = my_block.call(result, element)

      end
    end
    result
  end
end


class Array

  def my_each
    if block_given?
      self.each { |element| yield element }
      return self
    end
  end
end
