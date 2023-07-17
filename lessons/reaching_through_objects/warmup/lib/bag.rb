class Bag
  attr_reader :candies
  
  def initialize
    @candies = []
  end
  
  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_type)
    if @candies.find {|candy| candy.type == candy_type}
      true
    else
      false
    end
    # @candies.any? {|candy| candy.type == candy_type}

    # @candies.each do |candy|
    #   if candy.type == candy_type
    #     return true
    #   end
    # end
    # false
  end
end